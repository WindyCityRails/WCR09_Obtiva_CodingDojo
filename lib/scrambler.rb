module Scrambler
  extend self
  
  # def munge(input)
  #   sentence(input).join(" ")
  # end
  
  def sentence(sentence)
    sentence.split(/\s+/).map {|w| scramble(w)}
  end
  
  def scramble(word)
    chars = word.split(//)
    first = chars.shift
    last = chars.pop
    first + chars.sort_by {rand}.join("") + last
  end
end