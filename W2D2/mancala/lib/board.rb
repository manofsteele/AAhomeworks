class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
    place_stones
  end

  end

  def place_stones
    @cups.each_with_index do |el, idx|
      4.times {el << :stone} unless idx == 6 || idx == 13
  end

  def valid_move?(start_pos)
    raise("Invalid starting cup") if start_pos < 0 || start_pos >= @cups.length
    raise("Starting cup is empty") if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)

    stones = @cups[start_pos].length
    @cups[start_pos] = []
    pos = (start_pos + 1) % 14
    until stones == 0 do
      unless (pos == 6 && current_player_name == @name2) || (pos == 13 && current_player_name == @name1)
        @cups[pos] << :stone
        stones -= 1
      end
      if stones == 0 && @cups[pos].length == 1 && pos != 6 && pos != 13
        return_val = :switch
      elsif stones == 0 && @cups[pos].length > 1 && pos !=6 && pos != 13
        return_val = pos
      elsif stones == 0 && pos == 6 && current_player_name == @name1
        return_val = :prompt
      elsif stones == 0 && pos == 13 && current_player_name == @name2
        return_val = :prompt
      end
      pos = (pos + 1) % 14
    end

    render
    next_turn((pos - 1) % 14)
    return_val
  end

  def next_turn(ending_cup_idx)

    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..5].all? {|cup| cup.empty?} || @cups[7..12].all? {|cup| cup.empty?}
  end

  def winner
    case @cups[6].length <=> @cups[13].length
    when 0
      return :draw
    when 1
      return @name1
    when -1
      return @name2
    end
  end
end
