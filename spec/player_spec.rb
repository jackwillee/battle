require 'player'
describe Player do 
  subject(:jack){Player.new("jack")}
subject(:umberto){Player.new("umberto")}

it "should return player name" do 
 
expect(jack.show_name).to eq("jack")

end 
it "should be possible to set a name" do 
  
expect(umberto.show_name).to eq("umberto")
end 
it "should decrease player hp by 10" do 
  expect{subject.decrease_hp}.to change{subject.hp}.by(-10)
end 
it "should attack other player" do 
expect(umberto).to receive(:decrease_hp)
jack.attack(umberto)
end 
end 