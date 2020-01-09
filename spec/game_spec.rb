require 'game'

describe Game do
  let(:jack) { double(:jack) }
  let(:umberto) { double(:umberto) }
  subject { Game.new(jack, umberto) }

  it 'should attack other player' do
    expect(umberto).to receive(:decrease_hp)
    subject.attack(umberto)
  end
end