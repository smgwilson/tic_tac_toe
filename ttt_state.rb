class TttState

  attr_accessor :board

  @board = {:a1=>"1", :a2=>"4", :a3=>"7",
    :b1=>"2", :b2=>"5", :b3=>"8",
    :c1=>"3", :c2=>"6", :c3=>"9"}

  @wins = [
  ['a1', 'a2', 'a3'],
  ['b1', 'b2', 'b3'],
  ['c1', 'c2', 'c3'],
  ['a1', 'b1', 'c1'],
  ['a2', 'b2', 'c2'],
  ['a3', 'b3', 'c3'],
  ['a1', 'b2', 'c3'],
  ['a3', 'b2', 'c1']
  ]
  
  def draw_board
    puts ""
    puts ""
    puts " #{@board[:a1]}|#{@board[:b1]}|#{@board[:c1]}"
    puts "--------"
    puts " #{@board[:a2]}|#{@board[:b2]}|#{@board[:c2]}"
    puts "--------"
    puts " #{@board[:a3]}|#{@board[:b3]}|#{@board[:c3]}"
    puts ""
  end

end