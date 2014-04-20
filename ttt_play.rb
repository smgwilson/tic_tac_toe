class TicTacToe

def initialize
  @board = {
            :a1=>"1", :a2=>"4", :a3=>"7",
            :b1=>"2", :b2=>"5", :b3=>"8",
            :c1=>"3", :c2=>"6", :c3=>"9"
           }

  @wins = [
  [:a1, :a2, :a3],
  [:b1, :b2, :b3],
  [:c1, :c2, :c3],
  [:a1, :b1, :c1],
  [:a2, :b2, :c2],
  [:a3, :b3, :c3],
  [:a1, :b2, :c3],
  [:a3, :b2, :c1]
  ]
  
  @human = rand() > 0.5 ? 'X':'O'
  @cpu = @human == "X" ? "O": "X"
  @valid = (1..9).to_a.collect!{|i|i.to_s}
  $quit = false
   
  game_flow(@human)  
end

def game_flow(mark)
  begin
    puts "Let's Play Tic-Tac_Toe!"
    if mark == "X"
      puts "Coin toss! You play X's and go first."
      play_game(true)
    else
      puts "Coin toss! You play O's. The computer goes first."
      play_game(false)
    end
  end while (!$quit)
end

 def render_board
    puts ""
    puts ""
    puts " #{@board[:a1]}|#{@board[:b1]}|#{@board[:c1]}"
    puts "--------"
    puts " #{@board[:a2]}|#{@board[:b2]}|#{@board[:c2]}"
    puts "--------"
    puts " #{@board[:a3]}|#{@board[:b3]}|#{@board[:c3]}"
    puts ""
  end
  
def winner?(mark)
  return false
end

def board_full?
  x = @board.values.count("X")
  o = @board.values.count("O")
  return x + o == 9
end

def outcome
  puts "It's a tie!" if board_full?
end


def play_game (human_plays)
    puts "Value of board_full? is #{board_full?}\n"
    puts "X:#{@board.values.count("X")}"
    puts "O:#{@board.values.count("O")}"
    puts "Wins: #{@wins.each { |x| puts x }}"
    while !winner? && !board_full?
      make_move(human_plays)
    end
    exit
end

def make_move(human_plays)
  render_board
  if human_plays == true
    puts "Your turn.  Make a move or type 'q' to quit"
    input = gets.chomp!
    case input
      when "q"
        puts "Bye for now!"
        end_game
      else
        selection = @board.key(input)
        @board[selection] = @human
        play_game(false)
    end 
  else #code needs to be replaced with AI
    puts "Computer's turn.  Make a move."
    input = gets.chomp!
    selection = @board.key(input)
    @board[selection] = @cpu
    play_game(true)
  end
end

def end_game
  exit 0
end

end

game = TicTacToe.new

