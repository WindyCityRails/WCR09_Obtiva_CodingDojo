# Number Matrix:
# top, top_left, top_right, Middle, bottom_left, bottom_right, bottom
class Lcd
  NUMBERS = [
    [true, [true, true], false, [true, true], true],     # 0
    [false, [false, true], false, [false, true], false], # 1
    [true, [false, true], true, [true, false], true],    # 2
    [true, [false, true], true, [false, true], true],    # 3
    [false, [true, true], true, [false, true], false],    # 4
    [true, [true, false], true, [false, true], true],    # 5
    [true, [true, false], true, [true, true], true],    # 6
    [true, [false, true], false, [false, true], false],    # 7
    [true, [true, true], true, [true, true], true],    # 8
    [true, [true, true], true, [false, true], true],    # 9
  ]
  
  attr_reader :input, :scale
  
  def initialize(input, scale = 2)
    @input = parse_input(input)
    @scale = scale
  end
  
  def numbers
    @numbers ||= @input.map {|int| NUMBERS[int] }
  end
  
  def rows
    @rows ||= numbers.shift.zip(*numbers)
  end
  
  def to_s
    out = []
    rows.each_with_index do |row, i|
      if i % 2 == 0
        out << horizontal_row(row)
      else
        scale.times do
          out << vertical_row(row)
        end
      end
    end
    out.join("\n") + "\n"
  end
  
  def horizontal_row(booleans)
    booleans.map do |bool|
      [" ", (bool ? "-" : " ") * scale, " "].join
    end.join(" ")
  end
  
  def vertical_row(booleans)
    booleans.map do |left, right|
      [(left ? "|" : " "), " " * scale, (right ? "|" : " ")].join
    end.join(" ")
  end
  
  private
  
  def parse_input(str)
    str.split('').map(&:to_i)
  end
end

if __FILE__ == $PROGRAM_NAME
  if ARGV.include?("-s")
    dash_s = ARGV.index("-s")
    scale = ARGV.delete_at(dash_s + 1)
    ARGV.delete_at(dash_s)
  else
    scale = 2
  end
  puts Lcd.new(ARGV.shift, scale.to_i)
end