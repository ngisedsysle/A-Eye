Feature: Interaction

    Background: Connection
        Given the ip is "192.168.1.38"
        Given the app is connected

    Scenario: Set auto mode
        Given the selected mode is "mode auto"
        When I click on "set config"
        Then the system is in "mode auto"

    Scenario: Set manual mode
        Given the selected mode is "mode manual"
        When I click on "set config"
        Then the system is in "mode manual"

    Scenario: Set video mode
        Given the selected mode is "mode video"
        When I click on "set config"
        Then the system is in "mode video"

    Scenario: take manual picture
        Given the current mode is "mode manual"
        When I click on "take picture"
        Then I must receive a picture
