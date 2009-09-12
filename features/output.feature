Feature: Bowling Output
	in order to display bowling scores,
	the user needs to see them in
	BolwingSheet-like format.

	Scenario: Empty Score
		Given a new game for John
		When no balls are rolled
		Then output should look like
		"""
John's final score: 0

Frame     Roll  Roll    Score
   1                        
   2                        
   3                        
   4                        
   5                        
   6                        
   7                        
   8                        
   9                        
  10                        
   *                        
		"""
	
	Scenario: 
		Given a new game for John
		And the following Score
    	| 6 | 2 |   8 |
    	| 7 | 1 |  16 |
    	| X |   |  35 |
    	| 9 | - |  44 |
    	| 8 | / |  64 |
    	| X |   |  87 |
    	| X |   | 105 |
    	| 3 | 5 | 113 |
    	| 7 | 2 | 122 |
    	| 5 | / | 140 |
    	| 8	|   |     |
		Then output should look like
		"""
John's final score: 140

Frame     Roll  Roll    Score
   1        6     2        8
   2        7     1       16
   3        X             35
   4        9     -       44
   5        8     /       64
   6        X             87
   7        X            105
   8        3     5      113
   9        7     2      122
  10        5     /      140
   *        8               
		"""	
   