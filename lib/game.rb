class Game
  attr_accessor :board
  attr_accessor :players
  def initialize(board, players)
    @board = board
    @players = players
  end

  def take_turn(board, player, cell)
    board[cell] = 'X' if player == 'player1'
    board[cell] = 'O' if player == 'player2'
  end

  def full?
    @board.all? { |i| i == 'X' || i == 'O' }
  end

  def won?
    if @board[0] == @board[1] && @board[0] == @board[2] && @board[0] != ' ' && @board[1] != ' ' && @board[2] != ' '
      true
    elsif @board[3] == @board[4] && @board[3] == @board[5] && @board[3] != ' ' && @board[4] != ' ' && @board[5] != ' '
      true
    elsif @board[6] == @board[7] && @board[6] == @board[8] && @board[6] != ' ' && @board[7] != ' ' && @board[8] != ' '
      true
    elsif @board[0] == @board[3] && @board[0] == @board[6] && @board[0] != ' ' && @board[3] != ' ' && @board[6] != ' '
      true
    elsif @board[1] == @board[4] && @board[1] == @board[7] && @board[1] != ' ' && @board[4] != ' ' && @board[7] != ' '
      true
    elsif @board[2] == @board[5] && @board[2] == @board[8] && @board[2] != ' ' && @board[5] != ' ' && @board[8] != ' '
      true
    elsif @board[0] == @board[4] && @board[0] == @board[8] && @board[0] != ' ' && @board[4] != ' ' && @board[8] != ' '
      true
    elsif @board[2] == @board[4] && @board[2] == @board[6] && @board[2] != ' ' && @board[4] != ' ' && @board[6] != ' '
      true
    else
      false
    end
  end
end
