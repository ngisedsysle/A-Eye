Feature: A-Eye_root

    This file is designed to test the embedded system.

    Scenario: Set in auto mode
        Given the ip is "192.168.1.21"
        Given the mode is "mode auto"
        When I publish the TC on topic "toServer"
        Then I must receive "Process IA running" on topic "toClient"
        Then I must receive "start" on topic "toIA"

    Scenario: AI processing with boat
        Given The AI is waiting
        Given I have an image "with" boat
        When I publish "start" on topic "toIA"
        Then I must receive "0" on topic "prediction"

    Scenario: AI processing without boat
        Given The AI is waiting
        Given I have an image "without" boat
        When I publish "start" on topic "toIA"
        Then I must receive "1" on topic "prediction"

    Scenario: Set mode
            | mode   | ack                   |
            | auto   | Process IA running    |
            | manual | Mode capture manuelle |
            | video  | Mode video            |
        Given the ip is "192.168.1.21"
        Given the mode is "mode"
        When I publish the TC on topic "toServer"
        Then I must receive "ack" on topic "toClient"
    
    Scenario: take manual picture
        Given the selected mode is "mode manual"
        Given the TC means "take picture"
        When I publish the TC on topic "toServer"
        Then I must receive a picture
        Then I must receive "Capture" on topic "toClient"

