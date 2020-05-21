require_relative '../lib/main.rb'
require_relative '../lib/game.rb'
require_relative '../lib/check_win.rb'

let(:board) { [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '] }
let(:game) { Game.new(board) }
let(:win) { Win.new(board) }
let(:players) {[player1, player2]}

describe '.display_board(board)' do
    it 'Displays the game board' do
        expect().to 
    end
end

describe '.take_turn(board, player, cell)' do
    it 'Places X on the cell that Player X selects' do
        expect(take_turn(board, player1, 6)).to eq('X')
    end

    it 'Places O on the cell that Player O selects' do
        expect(take_turn(board, player2, 5)).to eq('O')
    end
end

describe '.check_win(game, win, player, players)' do
    it 'Checks to see whether Player X is the winner' do
        expect().to eq('Player X is the winner')
    end

    it 'Checks to see whether Player O is the winner' do
        expect().to eq('Player O is the winner')
    end

    it "Checks to see whether it's a draw" do
        expect().to eq("It's a draw")
    end
end