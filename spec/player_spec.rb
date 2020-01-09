require 'player'

describe Player do
  subject(:lucian) { Player.new('Lucian') }

  it "returns the player's name" do
    expect(lucian.name).to eq 'Lucian'
  end
end