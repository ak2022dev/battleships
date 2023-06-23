class Game
  attr_reader :unplaced_ships, :board

  def initialize(ships_array, board)
    @unplaced_ships = ships_array
    @board = board
  end
  
  def rows
  end

  def cols
  end

  def place_ship(length:, orientation:, row:, col:)
    board.place_ship(length: length, orientation: orientation, row: row, col: col)
  end
end
