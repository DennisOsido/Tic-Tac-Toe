#!/usr/bin/env ruby

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

# Instruction Board
intrs_board = []
board.length.times do |i|
  intrs_board[i] = i
end

players = %w[player1 player2]

def display_board(board)
  puts "#{board[0]}  |#{board[1]}  |#{board[2]} "
  puts '_ _|_ _|_ _'
  puts "#{board[3]}  |#{board[4]}  |#{board[5]} "
  puts '_ _|_ _|_ _'
  puts "#{board[6]}  |#{board[7]}  |#{board[8]} "
  puts '   |   |   '
end

def take_turn(board, player, cell)
  if player == 'player1'
    piece = 'X'
    board[cell] = piece
  else
    piece = 'O'
    board[cell] = piece
  end
end

def check_win(board,player, players, winner)
  if player == players[0] && won(board) == true  
    puts "#{players[0]} is the winner"
  end 

  if player == players[1] && won(board) == true
    puts "#{players[1]} is the winner"
  end

  if !winner && !board.include?(' ')
    puts "It's a Draw"
  end
end


def won(board)
  if board[0] == board[1] && board[0] == board[2] && board[0] != ' ' && board[1] != ' ' && board[2] != ' '
    true
  elsif board[3] == board[4] && board[3] == board[5] && board[3] != ' ' && board[4] != ' ' && board[5] != ' '
    true
  elsif board[6] == board[7] && board[6] == board[8] && board[6] != ' ' && board[7] != ' ' && board[8] != ' '
    true
  elsif board[0] == board[3] && board[0] == board[6] && board[0] != ' ' && board[3] != ' ' && board[6] != ' '
    true
  elsif board[1] == board[4] && board[1] == board[7] && board[1] != ' ' && board[4] != ' ' && board[7] != ' '
    true
  elsif board[2] == board[5] && board[2] == board[8] && board[2] != ' ' && board[5] != ' ' && board[8] != ' '
    true
  elsif board[0] == board[4] && board[0] == board[8] && board[0] != ' ' && board[4] != ' ' && board[8] != ' '
    true
  elsif board[2] == board[4] && board[2] == board[6] && board[2] != ' ' && board[4] != ' ' && board[6] != ' '
    true
  else
    false
  end
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
    break if won(board) == true
    
    puts "#{players[1]} select your cell between 0 to 8"
    cell = gets.chomp

    while board[cell.to_i] != ' '
      puts 'Please only select an empty cell between 0 and 8'
      puts 'Select another cell'
      cell = gets.chomp
    end
    take_turn(board, players[1], cell.to_i)
    display_board(board)
    break if won(board) == true
    
  end
  check_win(board, players[0], players, winner)
  #check_win(board, players[1], players, winner)
end
play(board, players)
