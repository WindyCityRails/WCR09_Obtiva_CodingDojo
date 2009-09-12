Feature: Animal Quiz

	Scenario: I guess right the first time.
		Given I start a new Quiz
		Then I should see "Think of an animal..."
		And I should see "Is it an elephant?  (y or n)"