Feature: Create email account

Scenario: Create account
  Given I am on the Yandex page
  When I enter account details
  Then I am directed to the inbox
