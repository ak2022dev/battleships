class Game
  attr_reader :unplaced_ships, :board

  def initialize(ships_array, grid_size)
    @unplaced_ships = ships_array
    @board = Board.new(grid_size)
  end
  
  def rows
  end

  def cols
  end

  def place_ship
  end
end
