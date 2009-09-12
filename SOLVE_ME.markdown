#### GREEN BELT CHALLENGE
# [Animal Quiz](http://rubyquiz.com/quiz15.html)

Your task is to create an Animal Quiz game. The program starts by telling the user to think of an animal. It then begins asking a series of yes/no questions about that animal: does it swim, does it have hair, etc. Eventually, it will narrow down the possibilities to a single animal and guess that (Is it a mouse?).

If the program has guessed correctly, the game is over and may be restarted with a new animal. If the program has guessed incorrectly, it asks the user for the kind of animal they were thinking of and then asks for the user to provide a question that can distinguish between its incorrect guess and the correct answer. It then adds the new question and animal to its "database" and will guess that animal in the future (if appropriate).

Take a close look at the example below. 

**Hint:** a small, supplementary ConsoleUI class with helpful methods like say, ask, yes?, or no? will probably come in handy. Make sure this code has specs as well.

## EXAMPLE GAME

<pre>
  Think of an animal...
  Is it an elephant?  (y or n)  n
  You win. Help me learn from my mistake...
  What animal were you thinking of?
     a rabbit
  What is a question that would distinguish a rabbit from an elephant?
     Is it a small animal?
  For a rabbit, how would you answer that question?  (y or n)  y
  Thanks. Play again?  (y or n)   y

  Think of an animal...
  Is it a small animal?  (y or n)  y
  Is it a rabbit?  (y or n)  n
  You win. Help me learn from my mistake...
  What animal were you thinking of?
     a Shih Tzu
  What is a question that would distinguish a Shih Tzu from a rabbit?
    Is it a kind of dog?
  For a Shih Tzu, how would you answer that question?  (y or n)  y
  Thanks. Play again?  (y or n)  y

  Think of an animal...
  Is it a small animal?  (y or n)  y
  Is it a kind of dog?  (y or n)  y
  Is it a Shih Tzu?  (y or n)  y
  I win.  Pretty smart, aren't I?
  Play again?  (y or n)  n
</pre>