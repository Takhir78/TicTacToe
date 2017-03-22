require_relative "console.rb"

game = Console.new(HumanConsole.new("x"),HumanConsole.new("o"))
game.display_board
move = game.get_move
# puts move
game.make_move(move)
game.display_board
game.change_player
# puts game.player1.marker
# puts game.player2.marker
# puts game.current_player.marker
move = game.get_move
game.make_move(move)
game.display_board
