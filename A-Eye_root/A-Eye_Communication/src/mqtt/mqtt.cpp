#include <iostream>
#include <cstdlib>
#include <string>
#include <cstring>
#include <cctype>
#include <thread>
#include <chrono>
#include <unistd.h>
#include <mqtt/async_client.h>

using namespace std;

const string DFLT_SERVER_ADDRESS { "tcp://localhost:1883" };

const string TOPIC { "test" };
const int QOS = 1;
const int	N_RETRY_ATTEMPTS = 5;

string rcv_msg;
string topic;

const char* PAYLOADS[] = {
	"Hello World!",
	"Hi there!",
	"Is anyone listening?",
	"Someone is always listening.",
	nullptr
};

const auto TIMEOUT = std::chrono::seconds(10);

class action_listener : public virtual mqtt::iaction_listener
{
	std::string name_;

	void on_failure(const mqtt::token& tok) override {
		std::cout << name_ << " failure";
		if (tok.get_message_id() != 0)
			std::cout << " for token: [" << tok.get_message_id() << "]" << std::endl;
		std::cout << std::endl;
	}

	void on_success(const mqtt::token& tok) override {
		std::cout << name_ << " success";
		if (tok.get_message_id() != 0)
			std::cout << " for token: [" << tok.get_message_id() << "]" << std::endl;
		auto top = tok.get_topics();
		if (top && !top->empty())
			std::cout << "\ttoken topic: '" << (*top)[0] << "', ..." << std::endl;
		std::cout << std::endl;
	}

public:
	action_listener(const std::string& name) : name_(name) {}
};


class callback : public virtual mqtt::callback,
					public virtual mqtt::iaction_listener
{
	// Counter for the number of connection retries
	int nretry_;
	// The MQTT client
	mqtt::async_client& cli_;
	// Options to use if we need to reconnect
	mqtt::connect_options& connOpts_;
	// An action listener to display the result of actions.
	action_listener subListener_;

	// This deomonstrates manually reconnecting to the broker by calling
	// connect() again. This is a possibility for an application that keeps
	// a copy of it's original connect_options, or if the app wants to
	// reconnect with different options.
	// Another way this can be done manually, if using the same options, is
	// to just call the async_client::reconnect() method.
	void reconnect() {
		std::this_thread::sleep_for(std::chrono::milliseconds(2500));
		try {
			cli_.connect(connOpts_, nullptr, *this);
		}
		catch (const mqtt::exception& exc) {
			std::cerr << "Error: " << exc.what() << std::endl;
			exit(1);
		}
	}

	// Re-connection failure
	void on_failure(const mqtt::token& tok) override {
		std::cout << "Connection attempt failed" << std::endl;
		if (++nretry_ > N_RETRY_ATTEMPTS)
			exit(1);
		reconnect();
	}

	// (Re)connection success
	// Either this or connected() can be used for callbacks.
	void on_success(const mqtt::token& tok) override {}

	// (Re)connection success
	void connected(const std::string& cause) override {
		std::cout << "\nConnection success" << std::endl;
		std::cout << "\nSubscribing to topic '" << TOPIC << "'\n"
			<< "\tfor client, using QoS" << QOS << "\n"
			<< "\nPress Q<Enter> to quit\n" << std::endl;

		cli_.subscribe(TOPIC, QOS, nullptr, subListener_);
	}

	// Callback for when the connection is lost.
	// This will initiate the attempt to manually reconnect.
	void connection_lost(const std::string& cause) override {
		std::cout << "\nConnection lost" << std::endl;
		if (!cause.empty())
			std::cout << "\tcause: " << cause << std::endl;

		std::cout << "Reconnecting..." << std::endl;
		nretry_ = 0;
		reconnect();
	}

	// Callback for when a message arrives.
	void message_arrived(mqtt::const_message_ptr msg) override {
        topic = msg->get_topic();
        rcv_msg = msg->to_string();
	}

	void delivery_complete(mqtt::delivery_token_ptr token) override {}

public:
	callback(mqtt::async_client& cli, mqtt::connect_options& connOpts)
				: nretry_(0), cli_(cli), connOpts_(connOpts), subListener_("Subscription") {}
};

void publish(string message, string address)
{
	mqtt::async_client cli(address, "");
	try {
		cli.connect()->wait();
		mqtt::topic top(cli, TOPIC, QOS);
		mqtt::token_ptr tok;
		tok = top.publish(message);
		tok->wait();	// Just wait for the last one to complete.
		// Disconnect
		cli.disconnect()->wait();
	}
	catch (const mqtt::exception& exc) {
		cerr << exc << endl;
	}
}

void subscribe(string  address)
{
	mqtt::connect_options connOpts;
	connOpts.set_clean_session(true);
	mqtt::async_client cli(address, "");
	// Install the callback(s) before connecting.
	callback cb(cli, connOpts);
	cli.set_callback(cb);

	// Start the connection.
	// When completed, the callback will subscribe to topic.

	try {
		cli.connect(connOpts, nullptr, cb);
	}
	catch (const mqtt::exception& exc) {
		std::cerr << "\nERROR: Unable to connect to MQTT server: '"
			<< DFLT_SERVER_ADDRESS << "'" << exc << std::endl;
	}

	while(1) {}
	// Disconnect
	try {
		cli.disconnect()->wait();
	}
	catch (const mqtt::exception& exc) {
		std::cerr << exc << std::endl;
	}
}


void t1()
{
     while (1) {
        string s;
        cin >> s;
        publish(s, DFLT_SERVER_ADDRESS);
    }
}
void t2()
{
    subscribe(DFLT_SERVER_ADDRESS);
    sleep(1);
}

void t3() 
{
    while(1)
    {
        cout << "Last message on topic : " << topic << " is : " << rcv_msg << endl;
        sleep(1);
    }
}
int main()
{
    thread first(t1);
	// thread second(t2);
	subscribe(DFLT_SERVER_ADDRESS);
    thread third(t3);
    first.join();
	// second.join();
    third.join();
 	return 0;
}
