# Welcome to the Obtiva Coding Dojo at the 2009 Windy City Rails.


## Dojo Rules:

1. **Have Fun** - There’s no bosses, no clients and no deadlines here. There’s also no pressure to finish the problem. So, get as far as you can in the alotted time, and let someone else give it a try. 

2. **Teamwork** - This computer has two keyboards and mice for a reason. Find a friend, or an interested stranger and try solving the problem together.

3. **Practice** - The benefit of a Coding Dojo is the opportunity to practice the desciplines that lead to well-made software we can be proud of, such as:
  - Test/Behavior-Driven Development
  - Design Patterns
  - Communication with your Pair
  - Baby Steps
  - Learning Something New


## Instructions:

1.  **Look over the problem at hand** Each problem is described on the desktop background as well as in the SOLVE_ME file in the code folder. If you're ever wanting to read the problem description, you can hit Command-F3 (which is the hot-key to hide all windows and show the desktop on a Mac).

2.  **Open up the code and commit any changes** All of the code for the exercise is in the folder named for the problem at hand, on the Desktop. Drag that folder to TextMate and give it a look-see. Before you get too far, give a quick <code>git status</code> to make sure no one's left any uncommitted work. If they have, go ahead and commit the code in it's current state to make sure the repository is clean. (<code>git commit -m "Commit message"</code> for anyone not familiar with git).

3.  **Setup the "current pair"** - We're using the [hitch](http://github.com/therubymug/hitch) gem to manage multiple people coding on the project at once. Using hitch is really easy:

  <pre><code>hitch username1 username2</code></pre>

  Now when your code is committed, you and your pair's names will be included in the commit information. Nice!

4.  **Determine your starting point** - If someone else was working on this problem before you sat down at the computer, you will want to continue wherever they left off. If the previous group solved the problem, you have two choices, re-factor their code into a better solution, or start over. To start over, run the following:

  <pre>dojo --start_over</pre>
  
  This will run some git magic to create a starter branch for your new attempt.
  
5. **Start coding!**
