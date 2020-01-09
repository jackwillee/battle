require 'player'
describe Player do 


it "should return player name" do 
  jack = Player.new("jack")
expect(jack.show_name).to eq("jack")

end 
it "should be possible to set a name" do 
  umberto = Player.new("umberto")
expect(umberto.show_name).to eq("umberto")
end 
end 