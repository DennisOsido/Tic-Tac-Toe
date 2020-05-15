# rubocop:disable Style/MultipleComparison

class Game
  attr_accessor :board
  def initialize(board)
    @board = board
  end

  def full?
    @board.all? { |i| i == 'X' || i == 'O' }
  end
end

# rubocop:enable Style/MultipleComparison
