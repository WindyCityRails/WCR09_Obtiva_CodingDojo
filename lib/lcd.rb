class Lcd
  @@one = <<-EOS
   
  |
   
  |
   
EOS

  @@eight = <<-EOS
 - 
| |
 - 
| |
 - 
EOS


  NUMBERS = [@@one, nil, nil, nil, nil, nil, nil, @@eight]
  
  attr_reader :input
  attr_reader :scale
  
  def initialize(digits, scale=2)
    @input = digits
    @scale = scale
  end
  
  def to_s    
    number_lines.shift.zip(*number_lines).collect { |line| line.join(" ") }.join("\n") + "\n"
  end
  
  def number_strings
    input.split(//).collect do |digit|
      NUMBERS[digit.to_i - 1]
    end
  end
  
  def number_lines
    @number_lines ||= number_strings.collect do |digit|
      digit.split("\n").each do |line|
        line.gsub!(/-/, "-" * scale)
        line.gsub(/(-| )/, "\1" * scale)
      end
    end
  end
  
end

if __FILE__ == $PROGRAM_NAME
  puts Lcd.new(ARGV[0]).to_s
end
