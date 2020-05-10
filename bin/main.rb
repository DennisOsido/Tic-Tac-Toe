#!/usr/bin/env ruby

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
intrs_board = Array.new
(board.length).times do |i|
  intrs_board[i] = i
end
$winner = true
players = ["p_1", "p_2"]

def display_board(board)
  puts "#{board[0]} |#{board[1]} |#{board[2]} "
  puts "#{board[3]} |#{board[4]} |#{board[5]} "
  puts "#{board[6]} |#{board[7]} |#{board[8]} "
end

def take_turn(board, player, cell)
  piece = String.new
  if player == 'p_1'
    piece = 'X'
    board[cell] = piece
  end
  if player == 'p_2'
    piece = 'O'
    board[cell] = piece
  end
end

def play(board, players)
  $winner = false
  while !$winner
    display_board(board)
    puts "Player #{players[0]} select your cell between 0 to 8"
    cell = gets.chomp
    take_turn(board,players[0], cell.to_i)
    display_board(board)
    puts "Player #{players[1]} select your cell between 0 to 8"
    cell = gets.chomp
    take_turn(board,players[1], cell.to_i)
  end
end

play(board, players)