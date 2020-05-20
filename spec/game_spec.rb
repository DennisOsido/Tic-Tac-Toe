require_relative '../lib/game.rb'
require_relative '../lib/check_win.rb'

RSpec.describe Game do
    let(:board) {[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']} 
    let(:game){Game.new(board)}
    let(:board_full) {['X', 'X', 'O', 'O', 'O', 'X', 'X', 'O', 'X']}
    let(:gameb) {Game.new(board_full)}

    it 'testing initialize method in the Game class' do
        expect(game).to be_an_instance_of(Game)
    end

    describe '.full?' do
        it 'Checking if board is full' do
            expect(gameb.full?).to eq(true)
        end
        it 'Checking if board is not full' do
            expect(game.full?).to_not eq(true)
        end
    end
end
