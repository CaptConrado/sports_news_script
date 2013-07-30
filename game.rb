require 'sports'
class Game
	include Team
	

n  = ["Charger","Patriots","Badgers"].sample
l  = ["San Diego","Los Angelos","New York", "Wisconsin"].sample
s  = rand(60..90)
o  = ["Saints","Padres","Angels"].sample
os = rand(30..90)
end




t = Game.new(n,l,s,o,os)
puts t.winner
