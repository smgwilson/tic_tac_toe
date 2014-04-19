require './ttt_state.rb'

class Player
  def initialize (mark)
    @mark = mark
  end

  def choose_move(board) #for human player
    puts "Your turn.  Make a move or type 'q' to quit"
    input = gets.chomp!
    if input == "q"
      puts "Bye for now!"
    else
      return input
    end
  end

end
