require '/Users/duncanskinner/Documents/makers_academy/course/week_3/challenges/weekly_challenge/battle/lib/player.rb'

class Game
  attr_reader :player1, :player2, :current_turn, :opponent

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_turn = @players.first
    @opponent = @players.last
  end

  def attack(player)
    player.lose_health
  end

  def switch_turns
    @players.reverse!
    @current_turn = @players.first
    @opponent = @players.last
  end

end
