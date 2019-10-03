require 'game'

describe Game do

subject(:game) { described_class.new(heli, duncan) }
let(:heli) { double :heli }
let(:duncan) { double :duncan }

  # describe '#initialize' do
    # it 'initializes with two arguments' do
    #   expect(described_class).to respond_to(:new).with(2).arguments
    # end
  # end

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
end
