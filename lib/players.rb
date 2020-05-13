class Player
  players = %w[player1 player2]
  def take_turn(board, player, cell)
    board[cell] = 'X' if player == 'player1'
    board[cell] = 'O' if player == 'player2'
  end
end
