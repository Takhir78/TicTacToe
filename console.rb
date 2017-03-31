require_relative "board.rb"
require_relative "human_console.rb"

class Console
	attr_accessor :player_1, :player_2, :board, :current_player

	def initialize(player_1,player_2)
		@player_1 = player_1
		@playe1_2 = player_2
		@board = Board.new
		@current_player = player_1

	end

  def get_board
    return @board
  end


  def isTheGameDone(marker)
     return @board.board_win?(marker)
  end

	def display_board
        puts """ 
       #{board.ttt_board[0]} | #{board.ttt_board[1]} | #{board.ttt_board[2]}
       ______

       #{board.ttt_board[3]} | #{board.ttt_board[4]} | #{board.ttt_board[5]}
       ______

       #{board.ttt_board[6]} | #{board.ttt_board[7]} | #{board.ttt_board[8]}

       """
    end

    def get_move
    	current_player.get_move(@board, @current_player)
    end

    def get_move(player)
      puts "Pick a space #{player.get_marker}"
      position = gets.chomp.to_i
      @board.update_board(position, player.get_marker)
    end
end
