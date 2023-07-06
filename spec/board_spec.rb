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
    it "places a ship of length one horizontally" do
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
    it "places a ship of length two horizontally" do
      board = Board.new(10)
      board.place_ship(length: 2, orientation: :horizontal, row: 3, col: 2)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,1,1,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0]])
    end
    it "places a ship of length 5 horizontally" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :horizontal, row: 3, col: 2)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,1,1,1,1,1,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0]])
    end
    it "places a ship of length one vertically" do
      board = Board.new(10)
      board.place_ship(length: 1, orientation: :vertical, row: 3, col: 2)
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
    it "places a ship of length two vertically" do
      board = Board.new(10)
      board.place_ship(length: 2, orientation: :vertical, row: 3, col: 2)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,1,0,0,0,0,0,0,0,0],
                            [0,1,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0]])
    end
    it "places a ship of length five vertically" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :vertical, row: 3, col: 2)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,1,0,0,0,0,0,0,0,0],
                            [0,1,0,0,0,0,0,0,0,0],
                            [0,1,0,0,0,0,0,0,0,0],
                            [0,1,0,0,0,0,0,0,0,0],
                            [0,1,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0]])
    end
    it "places a ship of length five vertically at top right corner" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :vertical, row: 1, col: 10)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0]])
    end
    it "places a ship of length five vertically at bottom right corner" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :vertical, row: 6, col: 10)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,1],
                            [0,0,0,0,0,0,0,0,0,1]])
    end
    it "places a ship of length five vertically at bottom left corner" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :vertical, row: 6, col: 1)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [1,0,0,0,0,0,0,0,0,0],
                            [1,0,0,0,0,0,0,0,0,0],
                            [1,0,0,0,0,0,0,0,0,0],
                            [1,0,0,0,0,0,0,0,0,0],
                            [1,0,0,0,0,0,0,0,0,0]])
    end
    it "places a ship of length five horizontally at top left corner" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :horizontal, row: 1, col: 1)
      result = board.contents
      expect(result).to eq([[1,1,1,1,1,0,0,0,0,0],
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
    it "places a ship of length five horizontally at top right corner" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :horizontal, row: 1, col: 6)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,1,1,1,1,1],
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
    it "places a ship of length five horizontally at bottom left corner" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :horizontal, row: 10, col: 1)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [1,1,1,1,1,0,0,0,0,0]])
    end
    it "places a ship of length five horizontally at bottom right corner" do
      board = Board.new(10)
      board.place_ship(length: 5, orientation: :horizontal, row: 10, col: 6)
      result = board.contents
      expect(result).to eq([[0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,0,0,0,0,0],
                            [0,0,0,0,0,1,1,1,1,1]])
    end
  
  end

  context "it detects error if ship not placed correctly within board" do
    it "detects error if ship placed above board" do
      board = Board.new(10)
      expect {board.place_ship(length: 1, orientation: :horizontal, row: 0, col: 1)}.to raise_error("ship not on board")
    end
    it "detects error if ship placed to right of board" do
      board = Board.new(10)
      expect {board.place_ship(length: 1, orientation: :horizontal, row: 1, col: 11)}.to raise_error("ship not on board")
    end
    it "detects error if ship placed to left of board" do
      board = Board.new(10)
      expect {board.place_ship(length: 1, orientation: :horizontal, row: 1, col: 0)}.to raise_error("ship not on board")
    end
    it "detects error if ship placed below board" do
      board = Board.new(10)
      expect {board.place_ship(length: 1, orientation: :horizontal, row: 11, col: 1)}.to raise_error("ship not on board")
    end
    it "detects error if ship starts on board would extend off right of board" do
      board = Board.new(10)
      expect {board.place_ship(length: 2, orientation: :horizontal, row: 1, col: 10)}.to raise_error("ship not on board")
    end
    it "detects error if ship starts on board would extend off right of board" do
      board = Board.new(10)
      expect {board.place_ship(length: 2, orientation: :horizontal, row: 10, col: 10)}.to raise_error("ship not on board")
    end
    it "detects error if ship starts on board would extend off right of board" do
      board = Board.new(10)
      expect {board.place_ship(length: 3, orientation: :horizontal, row: 1, col: 10)}.to raise_error("ship not on board")
    end
    it "detects error if ship starts on board would extend off right of board" do
      board = Board.new(10)
      expect {board.place_ship(length: 3, orientation: :horizontal, row: 1, col: 9)}.to raise_error("ship not on board")
    end
  end
end

