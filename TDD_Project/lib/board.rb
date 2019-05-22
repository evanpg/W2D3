class Board
  attr_reader :pile1, :pile2, :pile3, :held
  def initialize()
    @pile1 = [1,2,3]
    @pile2 = [] 
    @pile3 = []
    @held = [] #currently held disc
  end
  #pick a pile? 
  #1

  def pick_up(input) #input is pile number (1)
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
end