require_relative 'spec_helper.rb'
require_relative '../lib/game.rb'
require_relative '../lib/check_win.rb'

describe Game do
    describe initialize do
        it 'testing initialize method in the Game class' do
            test_game = Game.new(board)
            test_game.board expect(@board = board).to eql(true)
        end
    end

    describe full? do
        it 'testing full? method in the Game class' do
            expect(@board.all? { |i| i == 'X' || i == 'O' }).to be_true
        end
    end
end

describe Win do
    describe initialize do
        it 'testing initialize method in the Win class' do
            test_win = Win.new(board)
            test_win.board expect(@board = board).to eql(true)
        end
    end

    describe won? do
        it 'testing won method' do
            won? expect(@board[0] == @board[1] && @board[0] == @board[2] && @board[0] != ' ' && @board[1] != ' ' && @board[2] != ' ').to be_true
        end
    
        it 'testing won method' do
            won? expect(@board[3] == @board[4] && @board[3] == @board[5] && @board[3] != ' ' && @board[4] != ' ' && @board[5] != ' ').to be_true
        end
    
        it 'testing won method' do
            won? expect(@board[6] == @board[7] && @board[6] == @board[8] && @board[6] != ' ' && @board[7] != ' ' && @board[8] != ' ').to be_true
        end
    
        it 'testing won method' do
            won? expect(@board[0] == @board[3] && @board[0] == @board[6] && @board[0] != ' ' && @board[3] != ' ' && @board[6] != ' ').to be_true
        end
    
        it 'testing won method' do
            won? expect(@board[1] == @board[4] && @board[1] == @board[7] && @board[1] != ' ' && @board[4] != ' ' && @board[7] != ' ').to be_true
        end
    
        it 'testing won method' do
            won? expect(@board[2] == @board[5] && @board[2] == @board[8] && @board[2] != ' ' && @board[5] != ' ' && @board[8] != ' ').to be_true
        end
    
        it 'testing won method' do
            won? expect(@board[0] == @board[4] && @board[0] == @board[8] && @board[0] != ' ' && @board[4] != ' ' && @board[8] != ' ').to be_true
        end
    
        it 'testing won method' do
            won? expect(@board[2] == @board[4] && @board[2] == @board[6] && @board[2] != ' ' && @board[4] != ' ' && @board[6] != ' ').to be_true
        end
    end
end