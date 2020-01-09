require 'game'

describe Game do
  let(:jack) { double(:jack) }
  let(:umberto) { double(:umberto) }
  subject { Game.new(jack, umberto) }

  it 'should attack other player' do
    expect(umberto).to receive(:decrease_hp)
    subject.attack(umberto)
  end

  it 'should return player 1' do
    expect(subject.player_1).to be(jack)
  end

  it 'should return player 2' do
    expect(subject.player_2).to be(umberto)
  end
end