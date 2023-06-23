require_relative "../lib/game"
require_relative "../lib/board"

RSpec.describe Game do
  
  before(:example) do
    @board = Board.new(10)
  end

  context "it manages unplaced ships" do
    it "stores and returns unplaced_ships" do
      game = Game.new([2], @board)
      result = game.unplaced_ships
      expect(result).to eq([2])
    end
    it "stores and returns unplaced_ships" do
      game = Game.new([1,3], @board)
      result = game.unplaced_ships
      expect(result).to eq([1,3])
    end
    it "stores and returns unplaced_ships" do
      game = Game.new([4,2,1], @board)
      result = game.unplaced_ships
      expect(result).to eq([4,2,1])
    end
  end
  context "it manages a board" do
    it "creates a 10x10 board for the game" do
      game = Game.new([2,5], @board)
      result = game.board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0]])
    end
  end
end
