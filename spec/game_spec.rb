require 'game'

describe Game do

subject(:game) { described_class.new(heli, duncan) }
let(:heli) { double :heli, dead?: false }
let(:duncan) { double :duncan, name: :duncan, dead?: true }

  describe '#attack' do
    it 'damages player2' do
      expect(duncan).to receive(:lose_health)
      game.attack(duncan)
    end

    it 'damages player1' do
      expect(heli).to receive(:lose_health)
      game.attack(heli)
    end
  end

  describe '#current_turn' do
    it 'starts as player1' do
      expect(game.current_turn).to eq heli
    end
  end

  describe '#switch_turns' do
    it 'switches to player2' do
      game.switch_turns
      expect(game.current_turn).to eq duncan
    end
  end

  describe '#game_over?' do
    it 'ends game' do
      expect(game.game_over?).to eq true
    end
  end

  describe '#loser' do
    it 'declares duncan the loser' do
      expect(game.loser).to eq :duncan
    end
  end
end
