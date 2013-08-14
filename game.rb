class Game 
	attr_accessor :home_team,:away_team,:home_team_score,:away_team_score, :week

	def initialize(home_team,away_team,home_team_score,away_team_score,week) 
		@home_team = home_team
		@away_team = away_team
		@home_team_score = home_team_score
		@away_team_score = away_team_score
		@week = week
	end

	def headline
		"The #{self.winner} beat the #{self.loser} #{self.winning_score} to #{self.losing_score} in week #{self.season_week}"
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

	def title
		"#{home_team} vs. #{away_team}"
	end

	def season_week
		week
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

	def losing_score
		hts = home_team_score.to_i
		ats = away_team_score.to_i

		if hts < ats 
			hts.to_s
		else
			ats.to_s
		end
	end

	def self.rspec_works
    	true
  	end 
end
