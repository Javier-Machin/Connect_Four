class ConnectFour
  attr_accessor :current_player
  def initialize
    @board = []
    @player1 = "red"
    @player2 = "blue"
    @current_player = @player1
  end

  def start_game
    input = gets.chomp
    check_input(input)
    place_token(input)
    print_board
    #break if any_player_won?
    next_turn
  end

  def place_token(location)#takes only x axis and +1 it increasing y axis value each time
    @board[location] = Token.new(@current_player)
  end

  def check_input(input)
    input 
  end
  
  def print_board
    puts @board 
  end

  def next_turn
    @current_player == @player1 ? @current_player = @player2 : @current_player = @player1
  end

  def any_player_won?
    #if line any? hurr durr true
    #false
  end

end

class Token
  def initialize (color)
    @color = color
  end
end
