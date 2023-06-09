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
    if row < 1 || row > @contents.length || col < 1 || col > @contents[row-1].length
      raise "Error: your ship would not be positioned on the board"
    end
    if orientation == :horizontal && (col+length-1 > @contents[row-1].length)
      raise "Error: your ship would not be positioned on the board"
    end
    if orientation == :vertical && (row+length-1 > @contents.length)
      raise "Error: your ship would not be positioned on the board"
    end
    if orientation == :horizontal
      # Need to fill subsequent columns in given row
      (0...length).each do |column_offset|
        @contents[row-1][col-1+column_offset] = 1
      end
    else # assuming orientation == :vertical
      (0...length).each do |row_offset|
        @contents[row-1+row_offset][col-1] = 1
      end
    end
  end

end
