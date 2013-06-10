require 'test/unit'
require 'simplecov'
require_relative '../tic'
SimpleCov.start
class Test_TicTacToe < Test::Unit::TestCase
	
	def setup
		@klass = TicTacToe.instance
		@board = @klass.board
		@player1 = @klass.player1
	end

	def test_initialize_instance_variables_works
		assert @klass.is_a?(TicTacToe)
		assert @board.is_a? Array
		assert @board.all? {|i| i.is_a? String}
		assert_equal 9 ,@board.size
		assert_equal true, @player1
	end
end
