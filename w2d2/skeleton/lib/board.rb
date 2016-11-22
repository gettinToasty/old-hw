class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @player_one = name1
    @player_two = name2
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
    i = start_pos
    until stones.empty?
      i += 1
      i = 0 if i > 13
      if i == 6
        @cups[i] << stones.shift if current_player_name == @player_one
      elsif i == 13
        @cups[i] << stones.shift if current_player_name == @player_two
      else
        @cups[i] << stones.shift
      end
    end
    render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    return :prompt if ending_cup_idx == 13 || ending_cup_idx == 6
    return :switch if @cups[ending_cup_idx].size == 1
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
    @cups[0...6].all?(&:empty?) || @cups[7..12].all?(&:empty?)
  end

  def winner
    return :draw if @cups[13].length == @cups[6].length
    return @player_one if @cups[6].length > @cups[13].length
    @player_two
  end
end
