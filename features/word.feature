Feature: Scramble Word
	Just scramble a freakin word
	
	Scenario: Keep the first and last in place
	Given the word Dave
	Then match the word D**e
	
	Scenario: Scramble a four letter word
	Given the word Dave
	Then match the word Dvae
	
	Scenario: Don't scramble a three letter word
	Given the word Tom
	Then always match the word Tom
	