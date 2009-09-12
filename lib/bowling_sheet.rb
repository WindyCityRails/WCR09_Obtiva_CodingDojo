class BowlingSheet
  attr_accessor :scores
  
  def initialize(player)
    @player = player
    @scores = []
  end
  
  def to_s
    puts @scores.inspect
    final_score = @scores.empty? ? 0 : @scores.reverse.find {|s| !s[-1].nil?}[-1]
    output = "John's final score: #{final_score}\n"
    output << "\n"
    output << "Frame     Roll  Roll    Score\n"
    (0..10).each do |i|
      frame = @scores[i] || [nil,nil,nil]
      frame_number = i==10 ? '*' : i+1
      output << "%2s       %2s    %2s      %3s" % [frame_number,frame].flatten + "\n"
    end
    output.chop!
    output
  end
end