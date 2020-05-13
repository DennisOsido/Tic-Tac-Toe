class Board
  attr_accessor :board
  
  def initialize
    board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def display_board(board)
    puts "#{board[0]}  |#{board[1]}  |#{board[2]} "
    puts '_ _|_ _|_ _'
    puts "#{board[3]}  |#{board[4]}  |#{board[5]} "
    puts '_ _|_ _|_ _'
    puts "#{board[6]}  |#{board[7]}  |#{board[8]} "
    puts '   |   |   '
  end
end
