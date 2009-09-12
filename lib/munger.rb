
class String
  def munge_word
    letters = self.split('')
    first, last = letters.shift, letters.pop
    [first, letters.sort_by { rand }, last].to_s
  end
  
  def munge
    self.split(/\b/).map(&:munge_word).join
  end
end