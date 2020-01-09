class Player
  attr_reader :hp
  def initialize(name, hp = 60)
    @name = name 
    @hp = hp

  end 
  def show_name
  @name
  end 
def decrease_hp
  @hp -= 10 
  
end 
def attack(player)
player.decrease_hp
end 

end 