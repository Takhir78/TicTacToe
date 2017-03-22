require "minitest/autorun"
require_relative "board.rb"

class TestBoard < Minitest::Test

	def test_new_board
		board = Board.new
		assert_equal(Array.new(9,""), board.ttt_board)
	end

	def test_update_with_x_first_position
		board = Board.new
		board.update_board(0, "x")
		assert_equal(["x","","","","","","","",""], board.ttt_board)
	end

	def test_update_board
		board = Board.new
		board.update_board(0, "x")
		board.update_board(8, "o")
		assert_equal(["x","","","","","","","","o"], board.ttt_board)
	end

	def test_update_board_2
		board = Board.new
		board.update_board(0, "x")
		board.update_board(8, "o")
		board.update_board(7, "x")
		assert_equal(["x","","","","","","","x","o"], board.ttt_board)
	end

	def test_update_board_3
		board = Board.new
		board.update_board(0, "x")
		board.update_board(8, "o")
		board.update_board(7, "x")
		board.update_board(6, "o")
		assert_equal(["x","","","","","","o","x","o"], board.ttt_board)
	end

	def test_update_the_6th_position_return_x
		board = Board.new
		board.ttt_board = ["x","","","","","","o","x","o"]
		board.update_board(5, "x")
		assert_equal(["x","","","","","x","o","x","o"], board.ttt_board)
	end

	def test_open_space
		board = Board.new
		board.ttt_board = ["x","o","","","","x","o","x","o"]
		# board.update_board(5, "x")
		assert_equal(true,board.open_space?(3))
	end

	def test_open_space_2
		board = Board.new
		board.ttt_board = ["x","o","","","","x","o","x","o"]
		assert_equal(true,board.open_space?(2))
	end

	def test_open_space_3
		board = Board.new
		board.ttt_board = ["x","o","","","","x","o","x","o"]
		assert_equal(false,board.open_space?(55))
	end
	def test_full_board
		board = Board.new
		board.ttt_board = ["x","o","o","x","o","x","o","x","o"]
		assert_equal(true,board.full_board?())
	end

	def test_full_board_return_false
		board = Board.new
		board.ttt_board = ["x","o","o","o","o","x","o","x",""]
		assert_equal(false,board.full_board?())
	end

	def test_win
		board = Board.new
		board.ttt_board = ["x","x","x","","","","","",""]
		marker = "x"
		assert_equal(true,board.board_win?(marker))
	end

	def test_win_return_false_when_pass_nonwinning_board
		board = Board.new
		board.ttt_board = ["","x","x","x","","","","",""]
		marker = "x"
		assert_equal(false,board.board_win?(marker))
	end

	def test_win_diagonal_return_true
		board = Board.new
		board.ttt_board = ["x","","","","x","","","","x"]
		marker = "x"
		assert_equal(true,board.board_win?(marker))
	end

	def test_win_diagonal_2_to_6_return_true
		board = Board.new
		board.ttt_board = ["","","x","","x","","x","",""]
		marker = "x"
		assert_equal(true,board.board_win?(marker))
	end

	def test_win_diagonal_with_o_in_4_position_return_false
		board = Board.new
		board.ttt_board = ["x","","","","0","","","","x"]
		marker = "x"
		assert_equal(false,board.board_win?(marker))
	end

	def test_for_valid_user_input_1
		board = Board.new
		user_input = "1"
		assert_equal(true,board.input?(user_input))
	end

	def test_for_invalid_user_input_10
		board = Board.new
		user_input = "10"
		assert_equal(false,board.input?(user_input))
	end

	def test_for_invalid_user_input_R
		board = Board.new
		user_input = "R"
		assert_equal(false,board.input?(user_input))
	end

	def test_for_invalid_user_input_9
		board = Board.new
		user_input = "9"
		assert_equal(false,board.input?(user_input))
	end


end

