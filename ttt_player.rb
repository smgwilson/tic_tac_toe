#Composition over Inheritance

class TttPlayer
  attr_accessor :mark 
end

class TttHumanPlayer
  
  def initialize()
    @human = TttPlayer.new
    @human.mark = rand() > 0.5 ? 'X':'O'
  end

  def make_move(current_game)
  end
end

class TttAi
  
  def initialize(opponent_mark)
    @computer = TttPlayer.new
    @computer.mark = opponent_mark == 'X'? 'O':'X'
  end
  
  def make_move(current_game)
  end
  
end