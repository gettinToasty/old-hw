class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @player_one = name1
    @player_two = name2
    @p1_stones = @cups.select.with_index { |_, i| i < 6 }
    @p2_stones = @cups.select.with_index { |_, i| i >= 7 && i < 13 }
    place_stones

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.reject.with_index { |_, i| i == 13 || i == 6 }.each do |el|
      4.times { el << :stone }
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 13 || start_pos < 1
  end

  def make_move(start_pos, current_player_name)
    stones = []
    @cups[start_pos].size.times { stones << @cups[start_pos].shift }
    if start_pos < 6
      stones.each_index do |i|
        x = start_pos + i + 1
        x -= 14 if x > 13
        p x
        @cups[x] << stones[i] unless x == 13
      end
    else
      stones.each_index do |i|
        x = start_pos + i + 1
        x -= 14 if x > 13
        p x
        @cups[x] << stones[i] unless x == 6
      end
    end
    render
    y = start_pos + stones.size
    y -= 14 if y > 13
    next_turn(y)
  end

  def next_turn(ending_cup_idx)
    return :switch if @cups[ending_cup_idx].empty?
    return :prompt if ending_cup_idx == 13 || ending_cup_idx == 6
    ending_cup_idx
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @p1_stones.all?(&:empty?) || @p2_stones.all?(&:empty?)
  end

  def winner
    return :draw if @cups[13].length == @cups[6].length
    return @player_one if @cups[6].length > @cups[13].length
    @player_two
  end
end
