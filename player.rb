require './ttt_state.rb'

class Player
  
  def assign_mark
    @mark = rand() > 0.5 ? 'X':'0'
  end

  def choose_move(board) #for human player
    puts "Your turn.  Make a move or type 'q' to quit"
    input = gets.chomp!
    return input
  end

end
