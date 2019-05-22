class Board
  attr_reader :pile1, :pile2, :pile3, :held
  def initialize
    @pile1 = [1,2,3]
    @pile2 = [] 
    @pile3 = []
    @held = [] #currently held disc
  end

  def pick_up(input)
    if input == 1
      @held << pile1.shift
    elsif input == 2
      @held << pile2.shift
    else 
      @held << pile3.shift
    end
  end

  def put_down(input)
    if input == 1
      pile1.unshift(@held.pop)
    elsif input == 2
      pile2.unshift(@held.pop)
    else 
      pile3.unshift(@held.pop)
    end
  end

  def win?
    pile3 == [1,2,3]
  end

  # valid_move? in progress 
  def valid_move?(input) # 1, 2, 3
    if input == 1 && pile1.empty?
      return false
    elsif input == 2 && pile2.empty?
      return false
    elsif input == 3 && pile3.empty?
      return false
    end
  end
end