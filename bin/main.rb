#!/usr/bin/env ruby

@board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] 
@winner = ""
@turn = "X"

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

def take_turn(player, cell)
  @board[cell] = player
end

def play
  while winner = ""
    display_board
    puts "Player #{@turn} select your cell between 0 to 8"
    cell = gets.chomp
    take_turn(@turn, cell.to_i)
    if @turn == "X"
      @turn = "O"
    else
      @turn = "X"
    end
  end  
end
play