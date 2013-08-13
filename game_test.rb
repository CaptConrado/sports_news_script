require 'test/unit'
require 'game.rb'

class GameTest < Test::Unit::TestCase
	def test_if_winner_works
		home_score = "9"
		away_score = "42"
		game = Game.new("Chargers","Dodgers",home_score,away_score)

		game.winner.should == "Dodgers"
		# assert_equal == "Dodgers"
	end


end