require_relative "../lib/game"

RSpec.describe Game do
  context "it manages unplaced ships" do
    it "stores and returns unplaced_ships" do
      game = Game.new([2])
      result = game.unplaced_ships
      expect(result).to eq([2])
    end
  end
end
