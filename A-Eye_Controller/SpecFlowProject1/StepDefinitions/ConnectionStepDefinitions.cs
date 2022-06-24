using System;
using TechTalk.SpecFlow;

namespace SpecFlowProject1.StepDefinitions
{
    [Binding]
    public class ConnectionStepDefinitions
    {
        private readonly Thread _thread;

        public ConnectionStepDefinitions()
        {
            _thread = new Thread(AEye.Program.Main);
            _thread.Start();
        }


        [Given(@"the ip is ""([^""]*)""")]
        public void GivenTheIpIs(string p0)
        {
            AEye.Program.controller.set_ip_tb(p0);
        }

        [When(@"I click on ""([^""]*)""")]
        public void WhenIClickOn(string p0)
        {
            if (p0.Equals("set ip"))
            {
                AEye.Program.controller.Ip_btn_Click(new object(), new EventArgs());
            }
            else if (p0.Equals("set config"))
            {
                AEye.Program.controller.SetConfig_Click(new object(), new EventArgs());
                Thread.Sleep(3000);
            }
            else if (p0.Equals("take picture"))
            {
                AEye.Program.controller.TakePict_btn_Click(new object(), new EventArgs());
                Thread.Sleep(2000);
            }
            else
            {
                throw new PendingStepException();
            }
        }

        [Then(@"I must receive ""([^""]*)""")]
        public void ThenIMustReceive(string p0)
        {
            if (p0.Equals("ping success"))
            {
                AEye.Program.controller.getStatus().Text.Should().Be("Connected");
            }
            else
            {
                throw new PendingStepException();
            }
        }
    }
}
