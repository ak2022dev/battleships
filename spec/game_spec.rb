require_relative "../lib/game"
require_relative "../lib/board"

RSpec.describe Game do
  
  before(:example) do
    @board = double("board")
    allow(@board).to receive(:contents).and_return([[0,0,0,0,0,0,0,0,0,0],
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
  context "it places ships" do
    it "places a ship" do
      # Call place_ship method for game
      # which calls place_ship method for board
      # latter will need to be mocked in game unit test
      # and tested in board unit test
      expect(@board).to receive(:place_ship).with(length: 2, orientation: :horizontal, row: 3, col: 2)
      game = Game.new([2,5], @board)
      game.place_ship(length: 2, orientation: :horizontal, row: 3, col: 2)      
    end
  end
end
