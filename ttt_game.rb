require './ttt_player.rb'
require './ttt_logic.rb'

class TicTacToe
  
  def initialize
    @valid = (1..9).to_a.collect!{|i|i.to_s}
    $quit = false
    @turn = 0
    #pass human mark to initialize game
    game_init(@human.mark)  
  end
  
  def game_init(mark)
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
  
  def play_game(human_turn)
    puts "I'm fucking exhausted.  Goodnight Justin."
  end

  def end_game
    exit 0
  end
  
  def make_move(player)
    player.place_mark(self)
  end

def turns(turn)
  turn + 1
end

def check_win (array)
  if array.uniq.length == 1
    return array[0]
  end
end
 
end

game = TicTacToe.new