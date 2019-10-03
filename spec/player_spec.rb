require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double :name }
  describe '#initialize' do
    it "initializes with player name" do
      expect(player.name).to eq name
    end
  end
end
