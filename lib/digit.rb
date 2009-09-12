class Digit
  # attr_reader :elements
  def initialize(digit)
    outputs[digit]
  end
  
  def to_s
    # result = @elements.clone
    #     (0..4).each do |i|
    #       puts result[i]
    #       puts outputs[:space][i]
    #       puts other.elements[i]
    #       # result[i] += outputs[:space][i] + other.elements[i]
    #     end
    #     result
  end
  
  protected
  def outputs
    { 
      "0" => [
        [ 0, 1, 0],
        [ 1, 0, 1],
        [ 0, 0, 0],
        [ 1, 0, 1],
        [ 0, 1, 0],    ],
      :space => [
          [0],
          [0],
          [0],
          [0],
          [0],
        ]
      }
  end
  
end