class Player
  attr_reader :name, :hp
  DEFAULT_HIT_POINTS = 100

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hit_points
  end

  def attack(player)
    player.lose_health
  end

  def lose_health
    @hp -= 10
  end
  
end
