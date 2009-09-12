class String
  def munge
    # split(/\b/).map(&:munge_word).join
     split(/\b/).map { |wrd| wrd.munge_word }.join
   end

  protected
    def scramble
      split('').sort_by { rand }
    end
    
    def munge_word
      letters = split('')
      first, last = letters.shift, letters.pop
      [first, letters.join.scramble, last].to_s
    end
end
