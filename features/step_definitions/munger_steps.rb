Given /^the word (.*)$/ do |word|
  @word = word
end

Given /^the sentence (.*)$/ do |sentence|
  @sentence = sentence
end

Then /^match the sentence (.*)$/ do |pattern|
  scrambled_sentence = Scrambler.sentence(@sentence)
  word_patterns = pattern.split 
  scrambled_sentence.zip(word_patterns).each do |word, word_pattern|
    scrambled_word_matches?(word, word_pattern).should be_true    
  end
end

Then /^match the word (.*)$/ do |pattern|
  success = false
  1000.times do
    if word_matches?(@word, pattern)
      success = true
      break
    end
  end
  success.should be_true
end

Then /^always match the word (.*)$/ do |pattern|
  success = true
  1000.times do
    unless word_matches?(@word, pattern)
      success = false
      break
    end
  end
  success.should be_true
end

def scrambled_word_matches?(scrambled_word, pattern)
  scrambled_word.split('').each_with_index do |char, i|
    expected = pattern[i, 1]
    unless expected == "*"
      if char != expected
        return false
      end
    end
  end
  true
end

def word_matches?(word, pattern)
  scrambled_word_matches?(Scrambler.scramble(word), pattern)
end