require_relative "console.rb"

player_1 = HumanConsole.new("x")
player_2 = HumanConsole.new("o")
console = Console.new(player_1, player_2)
console.display_board
condition_to_stop=false


while(!condition_to_stop)
  puts "condition_to_stop value : #{condition_to_stop}"
  move = console.get_move(player_1)
  console.display_board
  condition_to_stop = console.isTheGameDone(player_1.get_marker)
  puts "condition_to_stop value : #{condition_to_stop}"
  move = console.get_move(player_2)
  console.display_board
  condition_to_stop = console.isTheGameDone(player_2.get_marker)
  puts "condition_to_stop value : #{condition_to_stop}"
end

# # puts move
# game.make_move(move)
# game.display_board
# game.change_player
# # puts game.player1.marker
# # puts game.player2.marker
# # puts game.current_player.marker
# move = game.get_move
# game.make_move(move)
# game.display_board
