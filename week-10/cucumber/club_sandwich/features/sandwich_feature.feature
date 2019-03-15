Feature: Testing the site functionality

Scenario Outline: If I click on an individual sandwich I can edit the title and description
  Given I am on the Club Sandwich home page
  When I click on a sandwich <sandwich>
  And click the edit button
  And change the title and description
  And click the Save Sandwich button
  Then The sandwich updates with the new values

  Examples:
  | sandwich | id |
  | hello | 1 |
  | hello | 2 |
  | hello | 3 |
  | hello | 4 |
  | hello | 5 |
  | hello | 6 |
@t2
Scenario: I can add a new sandwich to the list
  Given I am on the Club Sandwich home page
  When I click on the Make Your Own link
  And enter a title and description
  And click the Save Sandwich button
  Then the sandwich is added to the list
