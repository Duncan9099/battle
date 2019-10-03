class Game
  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_turn = @players.first
  end

  def attack(player)
    player.lose_health
  end

  def switch_turns
    @players.reverse!
    @current_turn = @players.first
  end

end
