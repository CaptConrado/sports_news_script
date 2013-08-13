require 'test/unit'
require 'sports.rb'

class SportTest < Test::Unit::TestCase
	def test_sport_has_winner
		score = "9"
		game = Team.new("Sharks","Steelers",
				score,"Randome","9")
		assert_equal score,"score is here"


	end

end