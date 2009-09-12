Feature: Munging some text
  In order to munge some text
  As a user
  I want to pass in text through the command line

  Scenario: Passing in a string
    Given I pass in a string "Chris and Jon"
    When I hit enter
    Then I should see "C***s and Jon"
 
  Scenario: Passing in a text file 
    Given I pass in a file "text_to_scramble.txt"
    When I hit enter
    Then scrambled text is displayed
  
  
  

  
