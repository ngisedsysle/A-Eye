Feature: Connection

    Scenario: Set IP
        Given the ip is "192.168.1.38"
        When I click on "set ip"
        Then I must receive "ping success"

