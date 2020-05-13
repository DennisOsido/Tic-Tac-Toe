#!/usr/bin/env ruby

require_relative '../lib/board.rb'
require_relative '../lib/players.rb'
require_relative '../lib/logic.rb'

def check_win(board, player, players, _winner)
  puts "#{players[0]} is the winner" if player == players[0] && won(board) == true

  puts "#{players[1]} is the winner" if player == players[1] && won(board) == true

  puts "It's a Draw" if !won(board) && full?(board)
end

def full?(board)
  board.all? { |i| i == 'X' || i == 'O' }
end

def play(board, players)
  winner = false
  until winner
    puts "#{players[0]} select your cell between 0 to 8"
    cell = gets.chomp

    while board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    take_turn(board, players[0], cell.to_i)
    display_board(board)
    check_win(board, players[0], players, winner)
    break if won(board) == true || full?(board)

    puts "#{players[1]} select your cell between 0 to 8"
    cell = gets.chomp

    while board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    take_turn(board, players[1], cell.to_i)
    display_board(board)
    check_win(board, players[1], players, winner)
    break if won(board) == true || full?(board)
  end
end
play(board, players)
