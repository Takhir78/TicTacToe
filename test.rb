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

end