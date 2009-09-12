Feature: Score Calculation
	Scenario: No balls rolled
		Given a new game for Jake
		When no balls are rolled
		Then the score should be 0
	
	Scenario: A single frame
	  Given a new game for Tom
		When the rolls are 2, 3
		Then the score should be 5 
