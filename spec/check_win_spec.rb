require_relative '../lib/game.rb'
require_relative '../lib/check_win.rb'

describe Win do
    it 'testing initialize method in the Win class' do
        test_win = Win.new(board)
        expect(test_win.board).to eql(board)
    end

    it 'testing won method' do
        test_win = Win.new(board)
        expect(test_win.won?).to be_truthy(board[0] == board[1] && board[0] == board[2] && board[0] != ' ' && board[1] != ' ' && board[2] != ' ')
    end

    it 'testing won method' do
        test_win = Win.new(board)
        expect(test_win.won?).to be_truthy(board[3] == board[4] && board[3] == board[5] && board[3] != ' ' && board[4] != ' ' && board[5] != ' ')
    end

    it 'testing won method' do
        test_win = Win.new(board)
        expect(test_win.won?).to be_truthy(board[6] == board[7] && board[6] == board[8] && board[6] != ' ' && board[7] != ' ' && board[8] != ' ')
    end

    it 'testing won method' do
        test_win = Win.new(board)
        expect(test_win.won?).to be_truthy(board[0] == board[3] && board[0] == board[6] && board[0] != ' ' && board[3] != ' ' && board[6] != ' ')
    end

    it 'testing won method' do
        test_win = Win.new(board)
        expect(test_win.won?).to be_truthy(board[1] == board[4] && board[1] == board[7] && board[1] != ' ' && board[4] != ' ' && board[7] != ' ')
    end

    it 'testing won method' do
        test_win = Win.new(board)
        expect(test_win.won?).to be_truthy(board[2] == board[5] && board[2] == board[8] && board[2] != ' ' && board[5] != ' ' && board[8] != ' ')
    end

    it 'testing won method' do
        test_win = Win.new(board)
        expect(test_win.won?).to be_truthy(board[0] == board[4] && board[0] == board[8] && board[0] != ' ' && board[4] != ' ' && board[8] != ' ')
    end

    it 'testing won method' do
        test_win = Win.new(board)
        expect(test_win.won?).to be_truthy(board[2] == board[4] && board[2] == board[6] && board[2] != ' ' && board[4] != ' ' && board[6] != ' ')
    end
end