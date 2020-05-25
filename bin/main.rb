#!/usr/bin/env ruby
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength

require_relative '../lib/game.rb'
require_relative '../lib/check_win.rb'
require_relative '../lib/board.rb'

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

players = %w[player1 player2]

game = Game.new(board)
win = Win.new(board)

def play(game, win, _board, players)
  loop do
    puts "#{players[0]} select your cell between 0 to 8"
    cell = gets.chomp

    while game.board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    Board.take_turn(game.board, players[0], cell.to_i)
    puts Board.display_board(game.board)
    puts Win.check_win(game, win, players[0], players)
    break if win.won? == true || game.full?

    puts "#{players[1]} select your cell between 0 to 8"
    cell = gets.chomp

    while game.board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    Board.take_turn(game.board, players[1], cell.to_i)
    puts Board.display_board(game.board)
    puts Win.check_win(game, win, players[1], players)
    break if win.won? == true || game.full?
  end
end
play(game, win, game.board, players)

# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength
