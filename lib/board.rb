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
    if length == 1
      @contents[row-1][col-1] = 1
      return
    end
    if length > 1
      if orientation == :horizontal
        # Need to fill subsequent columns in given row
        (0...length).each do |column|
          @contents[row-1][col-1+column] = 1
        end
      end
    end
  end
end
