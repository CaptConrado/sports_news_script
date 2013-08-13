class Team 
	attr_accessor :team_name, :city, :score, :opponent, :op_score

	def initialize(team_name, city, score, opponent,op_score) 
		@team_name = team_name
		@city = city
		@score = score
		@opponent = opponent
		@op_score = op_score
	end

	def winner
		if score.to_i > op_score.to_i
			puts "It looks like the #{city} #{team_name} beat the #{opponent} #{score} to #{op_score} "
		else 
			puts "My #{team_name} lost to the #{opponent} #{op_score} to #{score}"
		end
	end

	def home_team
		puts team_name
	end

	def away_team
		puts opponent
	end

	def won_by
		if score.to_i > op_score.to_i
			cal = score.to_i - op_score.to_i
			puts "#{team_name} won by #{cal}"
		else
			puts "They lost"
		end
	end
end


# n  = ["Chargers","Patriots","Badgers"].sample
# l  = ["San Diego","Los Angelos","New York", "Wisconsin"].sample
# s  = rand(60..90)
# o  = ["Saints","Padres","Angels"].sample
# os = rand(30..90)

# t = Team.new(n,l,s,o,os)
# puts t.winner
# puts t.home_team
# puts t.away_team
# puts t.won_by