#### ORANGE BELT CHALLENGE
# [Bowling Scores](http://rubyquiz.strd6.com/quizzes/181)

Whether it is real or on the Wii, bowling is a fun game. But we’ve all known folks who just don’t understand how to score properly. They can count pins knocked down, and know that getting all ten pins in one roll is good, but they still can’t keep score.

Your challenge is to tally scores for these people. The input will be the player’s name and the number of pins felled from each roll. Your program should tally the per-frame scores and generate output in table form. See the example output to the right.

Note that you should make use of typical bowling symbols: X for a strike, / for a spare, and - for zero. Also, if extra balls were thrown at the end (to supplement a strike or spare in the final frame), list those as frame * like the example to the right, but without a score.

**Extra credit:** Generate ascii or graphical output that looks more like a traditional bowling score form, which you can see [here](http://www.bowling2u.com/trivia/game/scoring.asp).

## EXAMPLE INPUT ##

<pre>
  % ruby bowling_scores.rb John 6 2 7 1 10 9 0 8 2 10 10 3 5 7 2 5 5 8
</pre>

## EXAMPLE OUTPUT ##

<pre>
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
</pre>