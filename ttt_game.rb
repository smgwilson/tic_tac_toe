class TicTacToeGame
  
 @slots = {:a1=>" ", :a2=>" ", :a3=>" ",
    :b1=>" ", :b2=>" ", :b3=>" ",
    :c1=>" ", :c2=>" ", :c3=>" "}
    
  @wins = [['a1', 'a2', 'a3'],
  ['b1', 'b2', 'b3'],
  ['c1', 'c2', 'c3'],
  ['a1', 'b1', 'c1'],
  ['a2', 'b2', 'c2'],
  ['a3', 'b3', 'c3'],
  ['a1', 'b2', 'c3'],
  ['a3', 'b2', 'c1']
  ]
  
  def draw_board
    puts " 1 #{@slots[:a1]}|#{@slots[:b1]}|#{@slots[:c1]}"
    puts "   -----"
    puts " 2 #{@slots[:a2]}|#{@slots[:b2]}|#{@slots[:c2]}"
    puts "   -----"
    puts " 3 #{@slots[:a3]}|#{@slots[:b3]}|#{@slots[:c3]}"
  end
  
end