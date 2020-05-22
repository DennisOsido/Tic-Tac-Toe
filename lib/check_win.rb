# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/AbcSize

class Win
  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def self.check_win(game, win, player, players)
    message = ''
    message = "#{players[0]} is the winner" if player == players[0] && win.won? == true

    message = "#{players[1]} is the winner" if player == players[1] && win.won? == true

    message = "It's a Draw" if !win.won? && game.full?
    message
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

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize
