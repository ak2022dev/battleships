class Board

  attr_reader :contents

  def initialize(n)
    @contents = []
    for row in (0...n)
      @contents << []
      for col in (0...n)
        @contents[row][col]=0
      end
    end
  end

  def place_ship(length:, orientation:, row:, col:)
    @contents[row-1][col-1]=1
  end
end
