require './board_game_player.rb'
require './ttt_logic.rb'

class TicTacToe
  
  def initialize
    marker1 = rand() > 0.5 ? 'X':'O'
    marker2 = marker1 == 'X'? 'O':'X'
    @human = BoardGamePlayer.new(marker1) #random mark assignment for human
    @cpu = BoardGamePlayer.new(marker2) #computer gets remaining mark
    
    @valid = (1..9).to_a.collect!{|i|i.to_s}
    
    $quit = false
    
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
  
end

game = TicTacToe.new