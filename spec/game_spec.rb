require_relative "../lib/game"

RSpec.describe Game do
  context "it manages unplaced ships" do
    it "stores and returns unplaced_ships" do
      game = Game.new([2])
      result = game.unplaced_ships
      expect(result).to eq([2])
    end
    it "stores and returns unplaced_ships" do
      game = Game.new([1,3])
      result = game.unplaced_ships
      expect(result).to eq([1,3])
    end
    it "stores and returns unplaced_ships" do
      game = Game.new([4,2,1])
      result = game.unplaced_ships
      expect(result).to eq([4,2,1])
    end
  end
end
