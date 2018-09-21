require 'game'
describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'should remove 10 HP from player' do
    expect(player2).to receive(:hit)
    game.attack(player2)
  end
end
