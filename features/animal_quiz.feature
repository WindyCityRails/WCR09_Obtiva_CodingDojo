Feature: Animal Quiz

	Scenario: I guess right the first time.
		Given I start a new Quiz
		Then I should see "Think of an animal..."
		When I am asked "Is it an elephant?  (y or n)" and I type "y"	
		Then I should see "I win. Pretty smart, aren't I?"