==== GREEN BELT CHALLENGE ====
= [Animal Quiz](http://rubyquiz.com/quiz15.html) =

On first glance, the text in the expected output below, may appear to be gibberish, but you mayfind that you can actually read this portion of the Gettysburg Address. The brain has an amazing capacity to compensate for things that aren't quite right, andone study has shown that when the first and last letters of words are left alone but those in the middle are scrambled, the text is often still quite comprehensible.

Your task for this challenge, then, is to take some text as input and output the text in this fashion. Scramble each word's center (leaving the first and last letters of each word intact). Whitespace, punctuation, numbers—anything that isn't a word—should also remain unchanged.

== INPUT YOUR SOLUTION SHOULD SUPPORT: ==

<pre>
  % ruby lib/munger.rb text_to_scramble.txt
  % ruby lib/munger.rb “Ad Hoc text to scramble up.”
</pre>

== EXPECTED OUTPUT FROM YOUR SOLUTION: ==

<pre>
  Fuor sroce and seven yaers ago our fethars boughrt ftroh, upon this cotninent, a new natoin, cvineoecd in Lbeirty, and dtacideed to the porstoiiopn taht all men are caetred eqaul.
  Now we are eagegnd in a garet ciivl war, ttiesng whheter that ntioan, or any ntoain so civneceod, and so deadctied, can lnog ernude. We are met hree on a graet bitltelefad of that war. We hvae come to deactdie a ptoroin of it as a fianl rseitng plcae for tshoe who hree gave tehir levis that that natoin mhigt lvie. It is aotlteehgr fnititg and poerpr that we shloud do tihs.
</pre>