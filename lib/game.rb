class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  # def attack(player)
  #   player1.lose_health
  # end

  def player1_attacks_player2
    @player2.lose_health
  end

  def player2_attacks_player1
    @player1.lose_health
  end

end
