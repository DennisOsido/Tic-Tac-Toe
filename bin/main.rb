#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/players.rb'
require_relative '../lib/logic.rb'

@board = Board.new
@winner = ""
@turn = "X"

def take_turn(player, cell)
  @board.board[cell] = player
end

def play
  @board.display_board
  puts "Player1 write your name"
  temp_player_name = gets.chomp
  player1 = Player.new(temp_player_name)
  puts "player1's name is #{player1.name}"
  puts ""
  puts "Player2 write your name"
  temp_player_name = gets.chomp
  player2 = Player.new(temp_player_name)
  puts "Player2's name is #{player2.name}"
  
  while @winner == ""
    @board.display_board
    if @turn == "X"
      puts "#{player1.name} select your cell"
    else
      puts "#{player2.name} select your cell"
    end
    cell = gets.chomp
    
    while @board.board[cell.to_i] != " "
      puts "Please only select an empty cell between 0 and 8"
      puts "Select another cell"
      cell = gets.chomp
    end

    take_turn(@turn, cell.to_i)

    if check_win(@board.board) == true
       @winner = @turn
    end

    if @winner == "" && !@board.board.include?(" ")
      @winner = "T"
    end

    if @turn == "X"
      @turn = "O"
    else
      @turn = "X"
    end
  end 

  @board.display_board
  if @winner == "X"
    puts "#{player1.name} is the winner"
  elsif @winner == "O"
    puts "#{player2.name} is the winner"
  elsif @winner == "T"
    puts "It's a tie"
  end

end
play