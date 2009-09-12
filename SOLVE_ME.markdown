#### YELLOW BELT CHALLENGE ####
# [LCD Number Display](http://rubyquiz.com/quiz14.html) #

Your challenge is to write a program that displays LCD style numbers at adjustable sizes.

The digits to be displayed will be passed as an argument to the program. Size should be controlled with the command-line option -s followed by a positive integer. The default value for -s should be 2.

Note the single column of space between digits in both examples below. For other values of -s, simply duplicate the - and | characters.

## EXAMPLE - DEFAULT SCALE OF 2: ##

<pre>
  % ruby lcd.rb 012345
   --        --   --        -- 
  |  |    |    |    | |  | |   
  |  |    |    |    t| |  | |   
             --   --   --   -- 
  |  |    | |       |    |    |
  |  |    | |       |    |    |
   --        --   --        -- 
</pre>

## EXAMPLE - SCALE OF 1 ##

<pre>
  % ruby lcd.rb -s 1 6789
   -   -   -   - 
  |     | | | | |
   -       -   - 
  | |   | | |   |
   -       -   - 
</pre>