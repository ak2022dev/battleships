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
end
