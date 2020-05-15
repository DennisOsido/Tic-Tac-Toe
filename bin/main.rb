#!/usr/bin/env ruby

require_relative '../lib/game.rb'

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
players = %w[player1 player2]

game = Game.new(board)

def display_board(board)
  puts "#{board[0]}  |#{board[1]}  |#{board[2]} "
  puts '_ _|_ _|_ _'
  puts "#{board[3]}  |#{board[4]}  |#{board[5]} "
  puts '_ _|_ _|_ _'
  puts "#{board[6]}  |#{board[7]}  |#{board[8]} "
  puts '   |   |   '
end

def take_turn(board, player, cell)
  board[cell] = 'X' if player == 'player1'
  board[cell] = 'O' if player == 'player2'
end

def check_win(game, player, players)
  puts "#{players[0]} is the winner" if player == players[0] && game.won? == true

  puts "#{players[1]} is the winner" if player == players[1] && game.won? == true

  puts "It's a Draw" if !game.won? && game.full?
end

def play(game, board, players)
  loop do
    puts "#{players[0]} select your cell between 0 to 8"
    cell = gets.chomp

    while game.board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    take_turn(game.board, players[0], cell.to_i)
    display_board(game.board)
    check_win(game, players[0], players)
    break if game.won? == true || game.full?

    puts "#{players[1]} select your cell between 0 to 8"
    cell = gets.chomp

    while game.board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    take_turn(game.board, players[1], cell.to_i)
    display_board(game.board)
    check_win(game, players[1], players)
    break if game.won? == true || game.full?
  end
end
play(game, game.board, players)
