require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  subject(:heli) { described_class.new("Heli") }
  subject(:duncan) { described_class.new("Duncan") }

  let(:name) { double :name }
  describe '#initialize' do
    it "initializes with player name" do
      expect(player.name).to eq name
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(heli.hp).to eq heli.hp
    end
  end

  describe '#lose_health' do
    it 'reduces player 2s hp by 10 points' do
      allow(Kernel).to receive(:rand).and_return(10)
      expect { player.lose_health }.to change { player.hp }.by(-10)
    end
  end

  describe '#dead?' do
  it "returns true when hp is 0 or less" do
    allow(Kernel).to receive(:rand).and_return(100)
    duncan.lose_health

    expect(duncan.dead?).to be true
  end
end
end
