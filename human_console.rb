class HumanConsole
	attr_accessor :marker

	def initialize(marker)
		@marker = marker
	end

	def get_move(board, player)
		puts "Pick a space"
		move = gets.chomp.to_i
        board.update_board(move, @marker)
	end

	def get_marker
		return @marker
	end

end