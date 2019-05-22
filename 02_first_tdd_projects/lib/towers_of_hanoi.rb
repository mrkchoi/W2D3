# towers_of_hanoi

class Game
  def initialize
    @towers = [[],[],[]]
    @game_over = false
  end

  def set_towers(difficulty)
    case difficulty
    when 1
      @towers[0] = [3,2,1]
      @num_towers = 3
    when 2
      @towers[0] = [4,3,2,1]
      @num_towers = 4
    when 3
      @towers[0] = [5,4,3,2,1]
      @num_towers = 5
    when 4
      @towers[0] = [6,5,4,3,2,1]
      @num_towers = 6
    when 5
      @towers[0] = [7,6,5,4,3,2,1]
      @num_towers = 7
    end
  end

  def play
    set_towers(welcome_prompt)
    until game_over?
      render
      make_move
    end
    
    render
    success_message
  end

  def welcome_prompt
    print "Welcome to Towers of Hanoi\n\n"
    print "Set your difficulty level (1 - 5)\n"
    gets.chomp.to_i
  end

  def make_move
    user_move = prompt_user

    if valid_move?(user_move)
      # logic to make move
      starting, ending = user_move
      @towers[ending].push(@towers[starting].pop) 
    end
  end

  def prompt_user
    p "Enter a starting tower & ending tower (i.e. '0,2'):\n\n"
    gets.chomp.split(',').map {|el| (el.to_i) - 1}
  end

  def valid_move?(move) # => [0,2]
    start, ending = move

    if @towers[start].empty?
      return false
    elsif @towers[ending].empty? || (@towers[start].last < @towers[ending].last)
      return true
    end

    false
  end

  def game_over?
    return true if @towers[1].length == @num_towers || @towers[2].length == @num_towers
    false
  end

  def render
    @towers.each {|tower| p tower}
  end

  def success_message
    print "\n\nYou are a bossssss.\n\n"
  end
end

if __FILE__ == $PROGRAM_NAME
  g = Game.new()
  g.play
end