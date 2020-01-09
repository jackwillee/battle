class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 0
  end

  def attack(player)
    player.decrease_hp
    change_turn
  end

  def turn
    @turn.even? ? @player_1.show_name : @player_2.show_name
  end

  def change_turn
    @turn += 1
  end

  def player_1?
    turn == @player_1.show_name
  end
end
