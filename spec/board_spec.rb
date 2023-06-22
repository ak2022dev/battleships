require_relative "../lib/board"

RSpec.describe Board do
  context "it initialises based on size" do
    it "initialises a 2x2" do
      board = Board.new(2)
      expect(board.contents).to eq([[0,0],[0,0]])
    end
  end
end
