#!/usr/bin/env ruby
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength

require_relative '../lib/game.rb'
require_relative '../lib/check_win.rb'

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
players = %w[player1 player2]

game = Game.new(board)
win = Win.new(board)

=begin
def display_board(board)
  puts "#{board[0]}  |#{board[1]}  |#{board[2]} "
  puts '_ _|_ _|_ _'
  puts "#{board[3]}  |#{board[4]}  |#{board[5]} "
  puts '_ _|_ _|_ _'
  puts "#{board[6]}  |#{board[7]}  |#{board[8]} "
  puts '   |   |   '
end
=end

def display_board(board)
  board = "  #{board[0]}  |#{board[1]}  |#{board[2]}
  _ _|_ _|_ _
  #{board[3]}  |#{board[4]}  |#{board[5]}
  _ _|_ _|_ _
  #{board[6]}  |#{board[7]}  |#{board[8]}
     |   |   "
  board
end

def take_turn(board, player, cell)
  board[cell] = 'X' if player == 'player1'
  board[cell] = 'O' if player == 'player2'
end

def check_win(game, win, player, players)
  puts "#{players[0]} is the winner" if player == players[0] && win.won? == true

  puts "#{players[1]} is the winner" if player == players[1] && win.won? == true

  puts "It's a Draw" if !win.won? && game.full?
end

def play(game, win, _board, players)
  loop do
    puts "#{players[0]} select your cell between 0 to 8"
    cell = gets.chomp

    while game.board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    take_turn(game.board, players[0], cell.to_i)
    puts display_board(game.board)
    check_win(game, win, players[0], players)
    break if win.won? == true || game.full?

    puts "#{players[1]} select your cell between 0 to 8"
    cell = gets.chomp

    while game.board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    take_turn(game.board, players[1], cell.to_i)
    puts display_board(game.board)
    check_win(game, win, players[1], players)
    break if win.won? == true || game.full?
  end
end
play(game, win, game.board, players)

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength
