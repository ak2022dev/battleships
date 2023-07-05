require_relative "../lib/board"

RSpec.describe Board do
  context "it initialises based on size" do
    it "initialises a 2x2" do
      board = Board.new(2)
      expect(board.contents).to eq([[0,0],[0,0]])
    end
    it "initialises a 10x10" do
      board = Board.new(10)
      expect(board.contents).to eq([[0,0,0,0,0,0,0,0,0,0],
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
      board = Board.new(10)
      board.place_ship(length: 1, orientation: :horizontal, row: 3, col: 2)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,1,0,0,0,0,0,0,0,0],
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

