require_relative "console.rb"

game = Console.new(HumanConsole.new("x"),HumanConsole.new("o"))
game.display_board
game.get_move

