# require_relative '../bin/main.rb'
require_relative '../lib/game.rb'
require_relative '../lib/check_win.rb'
require_relative '../lib/board.rb'

RSpec.describe Board do
  let(:board) { [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] }
  let(:board_x) { [' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ', ' '] }

  describe '.display_board' do
    it 'Displays the game board' do
      expect(Board.display_board(board)).to be_a(String)
    end
  end

  describe '.take_turn' do
    it 'Places X on the cell selected by player1 and returns message stating player1 made a move' do
      expect(Board.take_turn(board, 'player1', 1)).to eq('player1 made a move')
    end
    it 'Places O on the cell selected by player2 and returns message stating player2 made a move' do
      expect(Board.take_turn(board, 'player2', 5)).to eq('player2 made a move')
    end
  end
end
