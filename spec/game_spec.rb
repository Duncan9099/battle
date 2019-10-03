require 'game'

describe Game do

subject(:game) { described_class.new(heli, duncan) }
let(:heli) { double :heli }
let(:duncan) { double :duncan }

  describe '#player1_attacks_player2' do
    it 'damages player2' do
    expect(duncan).to receive(:lose_health)
    subject.player1_attacks_player2
  end
 end

   describe '#player2_attacks_player1' do
     it 'damages player1' do
       expect(heli).to receive(:lose_health)
       subject.player2_attacks_player1
     end
   end
end
