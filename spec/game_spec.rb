require_relative "../lib/game"
require_relative "../lib/board"

RSpec.describe Game do
  context "it manages unplaced ships" do
    xit "stores and returns unplaced_ships" do
      game = Game.new([2])
      result = game.unplaced_ships
      expect(result).to eq([2])
    end
    xit "stores and returns unplaced_ships" do
      game = Game.new([1,3])
      result = game.unplaced_ships
      expect(result).to eq([1,3])
    end
    xit "stores and returns unplaced_ships" do
      game = Game.new([4,2,1])
      result = game.unplaced_ships
      expect(result).to eq([4,2,1])
    end
  end
  context "it manages a board" do
    it "creates a 10x10 board for the game" do
      game = Game.new([2,5], 10)
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
