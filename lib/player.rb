class Player
  attr_reader :name, :hp
  DEFAULT_HIT_POINTS = 100

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hit_points
  end

  def lose_health
    @hp -= random_number
  end

  def dead?
  @hp <= 0
end

private
def random_number
  Kernel.rand(1..100)
end

end
