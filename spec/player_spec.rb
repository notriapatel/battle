require 'player'

describe Player do
  subject(:lucian) { Player.new('Lucian') }
  subject(:meghan) { Player.new('Meghan') }

  it "returns the player's name" do
    expect(lucian.name).to eq 'Lucian'
  end

  it "displays HPs" do
    expect(lucian.hp).to eq 60
  end

  it "reduces HP by 10" do
    expect { lucian.reduce_hp }.to change { lucian.hp }.by(-10)
  end

end