Feature: A-Eye_root

    This file is designed to test the embedded system.

    Scenario: Set in auto mode
        Given the ip is "192.168.1.41"
        Given the mode is "auto"
        When I publish "TC" on topic "A-Eye/toServer"
        Then I must receive "Process IA running" on topic "A-Eye/toClient"
        Then I must receive "start" on topic "toIA"

    Scenario: Set mode manual
        Given the ip is "192.168.1.41"
        Given the mode is "manual"
        When I publish "TC" on topic "A-Eye/toServer"
        Then I must receive "Mode capture manuelle" on topic "A-Eye/toClient"

    Scenario: Set mode video
        Given the ip is "192.168.1.41"
        Given the mode is "video"
        When I publish "TC" on topic "A-Eye/toServer"
        Then I must receive "Mode video" on topic "A-Eye/toClient"

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

    Scenario: take manual picture
        Given the mode is "manual"
        Given the TC means "take picture"
        Given I have an image "with" boat
        When I publish "TC" on topic "A-Eye/toServer"
        Then I must receive "Capture" on topic "A-Eye/toClient"
        Then I must receive the picture

