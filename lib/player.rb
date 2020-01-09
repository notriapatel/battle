class Player

  attr_reader :name

  def initialize(name)
    @name = name
    @hp = 60
  end

  def hp
    @hp
  end

  def reduce_hp
    @hp -= 10
  end

  def attack(player)
    player.reduce_hp
  end
end