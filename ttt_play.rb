require './ttt_state.rb'
require './player.rb'

def game_flow
  #determines if we should play the game
end

def play_game
 until winner?
  a_move = current_player.choose_move
  game.apply_move(a_move)
end
return winner
end

def exit
  exit 0
end