#!/usr/bin/env ruby -wKU

class Munger
  
  attr_reader :input
  def initialize(input)
    @input = input
  end
  
  def munge
    
  end
  
end

if __FILE__ == $0
  
  input = ARGV.shift
  puts Munger.new(input).munge
  
end