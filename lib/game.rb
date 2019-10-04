require_relative 'player'

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

  def game_over?
  @player1.dead? || @player2.dead?
  end

  def loser
    @players.detect { |player| player.dead? }.name
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end
end
