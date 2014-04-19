require './ttt_state.rb'
require './player.rb'

@human = Player.new
@h_mark = @human.assign_mark

def game_flow(mark)
  begin
    puts "Let's Play Tic-Tac_Toe!"
    if mark == "X"
      puts "You play X and go first."
      play_game(true)
    else
      puts "You play O. The computer goes first."
      play_game(false)
    end
  end while (!$quit)
end

def play_game (human_first)
  game = TttState.new
  
 until winner?
  a_move = current_player.choose_move
  game.apply_move(a_move)
 end
return winner
end

$quit = false
game_flow(@h_mark)
