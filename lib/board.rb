# rubocop:disable Lint/UselessAssignment
class Board
  def initialize; end

  def self.display_board(board)
    board = "        #{board[0]}  |#{board[1]}  |#{board[2]}
        _ _|_ _|_ _
        #{board[3]}  |#{board[4]}  |#{board[5]}
        _ _|_ _|_ _
        #{board[6]}  |#{board[7]}  |#{board[8]}
           |   |   "
    board
  end

  def self.take_turn(board, player, cell)
    status = ''
    if player == 'player1'
      board[cell] = 'X'
      status = 'player1 made a move'
    elsif player == 'player2'
      board[cell] = 'O'
      status = 'player2 made a move'
    end
  end
end

# rubocop:enable Lint/UselessAssignment
