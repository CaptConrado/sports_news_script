
load "./game.rb"


new_game = Game.new("Chargers","Dodgers","40","42","1")

describe Game do
 	context "making sure rspec works" do
    	it "should return true when the method rspec_works is called" do
      	Game.rspec_works.should eq(true)
    	end
  	end

    context "Testing if lookup works" do
      it "should return San Diego as the Chargers location" do
        new_game.location.should == "Los Angeles"
      end 
    end

    context "Game needs a title" do 
      it "should have the Chargers vs. Dodgers" do
        new_game.title.should == "Chargers vs. Dodgers"
      end
    end

  	context "making sure the winner works" do 
  		it "should have Dodgers be the winner" do
  			new_game.winner.should == "Dodgers"
  		end
  	end

  	context "making sure the loser works" do 
  		it "should have  Chargers be the Loser" do
  			new_game.loser.should == "Chargers"
  		end
  	end

  	context "Finding the winning score" do 
  		it "should have '42 as the winning score'" do 
  			new_game.winning_score.should == "42"
  		end
  	end

    context "Finding the losing score" do 
      it "should have '40' as the winning score" do
        new_game.losing_score.should == "40"
      end
    end

    context "headline works" do
      it "should have an interesting tagline" do
        new_game.headline.should == "The Los Angeles Dodgers beat the Chargers 42 to 40 in week 1"
      end
    end

    context "finding out the week" do
      it "should have the week printed" do
        new_game.week.should == "1"
      end
    end
end
