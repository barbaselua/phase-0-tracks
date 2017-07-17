require_relative 'game'
describe WordGuessingGame do 
  let(:word) {WordGuessingGame.new("wording")}
   it "stores the word given on intialization" do 
    expect(word.get_word).to eq "wording"
end

end 