load "./game.rb"

describe Game do
 	context "making sure rspec works" do
    	it "should return true when the method rspec_works is called" do
      	Game.rspec_works.should eq(true)
    	end
  	end

  	context "making sure the winner works" do 
  		it "should have Dodgers be the winner" do
  			new_game = Game.new("Chargers","Dodgers","40","42")
  			new_game.winner.should == "Dodgers"
  		end
  	end

  	context "making sure the loser works" do 
  		it "should have  Chargers be the Loser" do
  			new_game = Game.new("Chargers","Dodgers","40","42")
  			new_game.loser.should == "Chargers"
  		end
  	end

  	context "Finding the winning score" do 
  		it "should have '42 as the winning score'" do 
  			new_game = Game.new("Chargers","Dodgers","40","42")
  			new_game.winning_score.should == "42"
  		end
  	end

    context "Finding the losing score" do 
      it "should have '40' as the winning score" do
        new_game = Game.new("Chargers","Dodgers","40","42")
        new_game.losing_score.should == "40"
      end
    end

    context "headline works" do
      it "should have an interesting tagline" do
        new_game = Game.new("Chargers","Dodgers","40","42")
        new_game.headline.should == "The Dodgers beat the Chargers 42 to 40"
      end
    end
end
