require "Connect_four"

describe ConnectFour do
  subject(:my_game) { ConnectFour.new }    

  describe "attributes" do
    
    context "with game instance created" do
      it { is_expected.to respond_to(:current_player) }
    end

  end

  describe "input_validation" do

    context "when given 'exit' as input" do
   	  	
   	  it "returns 'exit'" do
        expect(my_game.check_input("exit")).to eql("exit")
      end
    end
  end

  describe "place_token" do

    context "when given '5' as location" do
        
      it "'@board[5]' is a instance of Token" do
        expect(my_game.place_token(5)).to be_instance_of(Token)
      end
    end
  end

  describe "next_turn" do

    context "when called" do
        
      it "changes @current_player value" do
        my_game.next_turn
        expect(my_game.current_player).to eql("blue")
      end
    end
  end
end
