Feature: Scenario Outline with data tables

  Scenario Outline: Using an example table to make our tests drier

  Given I have more than one data row in my table
  And includes <Name> as a string and <Age> as an integer
  Then I can validate <Name> and <Age> are correct

  Examples:
  | Name | Age |
  | Rob | 28 |
  | Louis | 22 |
  | Ash | 24 |
