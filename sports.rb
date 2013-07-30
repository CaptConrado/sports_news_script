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




end


n  = ["Charger","Patriots","Badgers"].sample
l  = ["San Diego","Los Angelos","New York", "Wisconsin"].sample
s  = rand(60..90)
o  = ["Saints","Padres","Angels"].sample
os = rand(30..90)

t = Team.new(n,l,s,o,os)
puts t.winner
