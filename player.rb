class Player
  
  attr_accessor :marker
  
  def initialize (name)
    @name = name
  end
  
  def assign_marker
    rand > 0.5 ? 'X':'0'
  end
end
