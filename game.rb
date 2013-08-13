class Game 
	attr_accessor :home_team,:away_team,:home_team_score,:away_team_score

	def initialize(home_team,away_team,home_team_score,away_team_score) 
		@home_team = home_team
		@away_team = away_team
		@home_team_score = home_team_score
		@away_team_score = away_team_score
	end

	def winner
		hts = home_team_score.to_i
		ats = away_team_score.to_i

		if hts > ats
			"#{home_team}"
		else
			"#{away_team}"
		end
	end

	def loser
		hts = home_team_score.to_i
		ats = away_team_score.to_i

		if hts < ats
			"#{home_team}"
		else
			"#{away_team}"
		end
	end

	def winning_score
		hts = home_team_score.to_i
		ats = away_team_score.to_i

		if hts > ats 
			hts.to_s
		else
			ats.to_s
		end
	end


	def self.rspec_works
    	true
  	end 
end
