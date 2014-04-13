require './ttt_game.rb'

@human = ""
@cpu = "Computer"
@human_marker = ""
@cpu_marker = ""

@board = {:a1=>"1", :a2=>"4", :a3=>"7",
    :b1=>"2", :b2=>"5", :b3=>"8",
    :c1=>"3", :c2=>"6", :c3=>"9"}

puts "Let's Play Tic-Tac_Toe!"
print "What is your name?: "
@human = gets.chomp!

@human_marker = rand() > 0.5 ? 'X':'0'
@cpu_marker = @human_marker == "X" ? "0": "X"

puts ""
puts "#{@human}, you'll play #{@human_marker}'s and the #{@cpu} will play #{@cpu_marker}'s."

def draw_game
  puts ""
  puts ""
  puts " #{@board[:a1]}|#{@board[:b1]}|#{@board[:c1]}"
  puts "--------"
  puts " #{@board[:a2]}|#{@board[:b2]}|#{@board[:c2]}"
  puts "--------"
  puts " #{@board[:a3]}|#{@board[:b3]}|#{@board[:c3]}"
  puts ""
  puts "#{@cpu}: #{@cpu_marker}"
  puts "#{@human}: #{@human_marker}"
  puts ""
end

def valid_input?(input)
  valid = (0..9).to_a
  valid.include?(input.to_i)
end

def invalid_move
  puts "Invalid move! Select a space by number."
end

def winner?

end

def next_turn(current_player)
  if current_player == @human
    cpu_turn
  else
    user_turn
  end
end

def user_turn
  draw_game
  puts "Your turn.  Make a move or type 'q' to quit"
  input = gets.chomp!
  if input == "q"
    puts "Bye for now!"
    exit
  else
    selection = @board.key(input)
    if valid_input?(input)
      @board[selection] = @human_marker
      unless winner?
      next_turn(@human)
      end
    end
      #invalid_move #fix; not going here for string input.
  end
end

def cpu_turn #temporarily making cpu another human player
  draw_game
  puts "Computer's turn"
  input = gets.chomp!
  selection = @board.key(input)
    if valid_input?(input)
      @board[selection] = @cpu_marker
      next_turn(@cpu)
    end
end

if @human_marker == "X"
  user_turn
else
  cpu_turn
end


def exit
  exit 0
end

