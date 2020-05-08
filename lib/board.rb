class Board
    def initialize 
        @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end

    def display_board
        puts "0 |1 |2 "
        puts "#{@board[0]} |#{@board[1]} |#{@board[2]} "
        puts "__|__|__"
        puts "3 |4 |5 "
        puts "#{@board[3]} |#{@board[4]} |#{@board[5]} "
        puts "__|__|__"
        puts "6 |7 |8 "
        puts "#{@board[6]} |#{@board[7]} |#{@board[8]} "
        puts "  |  | "
    end
end