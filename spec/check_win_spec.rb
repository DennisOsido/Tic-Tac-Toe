require_relative '../lib/game.rb'
require_relative '../lib/check_win.rb'

RSpec.describe Win do
    let(:board) {[' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']}
    let(:win){Win.new(board)}

    let(:win1_x) {['X', 'X', 'X', 'X', 'O', 'O', 'O', 'X', 'O']}
    let(:win1_x_combo) {Win.new(win1_x)}

    let(:win2_x) {['X', 'O', 'O', 'X', 'X', 'X', 'O', 'X', 'O']}
    let(:win2_x_combo) {Win.new(win2_x)}

    let(:win3_x) {['X', 'O', 'O', 'O', 'O', 'X', 'X', 'X', 'X']}
    let(:win3_x_combo) {Win.new(win3_x)}

    let(:win4_x) {['X', 'X', 'O', 'X', 'O', 'X', 'X', 'O', 'O']}
    let(:win4_x_combo) {Win.new(win4_x)}

    let(:win5_x) {['X', 'X', 'O', 'O', 'X', 'X', 'O', 'X', 'O']}
    let(:win5_x_combo) {Win.new(win5_x)}

    let(:win6_x) {['O', 'X', 'X', 'O', 'X', 'X', 'O', 'O', 'X']}
    let(:win6_x_combo) {Win.new(win6_x)}

    let(:win7_x) {['O', 'X', 'X', 'X', 'X', 'O', 'X', 'O', 'O']}
    let(:win7_x_combo) {Win.new(win7_x)}

    let(:win8_x) {['X', 'X', 'O', 'X', 'X', 'O', 'O', 'O', 'X']}
    let(:win8_x_combo) {Win.new(win8_x)}

    it 'testing initialize method in the Win class' do
        expect(win).to be_an_instance_of(Win)
    end

    describe '.won?' do
        it 'testing row 1 winning combination when player X has won' do
            expect(win1_x_combo.won?).to eq(true)
        end

        it 'testing row 2 winning combination when player X has won' do
            expect(win2_x_combo.won?).to eq(true)
        end

        it 'testing row 3 winning combination when player X has won' do
            expect(win3_x_combo.won?).to eq(true)
        end

        it 'testing column 1 winning combination when player X has won' do
            expect(win4_x_combo.won?).to eq(true)
        end

        it 'testing column 2 winning combination when player X has won' do
            expect(win5_x_combo.won?).to eq(true)
        end

        it 'testing column 3 winning combination when player X has won' do
            expect(win6_x_combo.won?).to eq(true)
        end

        it 'testing diagonal 1 winning combination when player X has won' do
            expect(win7_x_combo.won?).to eq(true)
        end

        it 'testing diagonal 2 winning combination when player X has won' do
            expect(win8_x_combo.won?).to eq(true)
        end
    end
end