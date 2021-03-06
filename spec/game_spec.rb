require 'game'

describe Game do
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }
  subject(:game) { described_class.new(player_1, player_2) }

  it 'defaults with two players' do
    expect(game.players).to eq [player_1, player_2]
  end

  it "can attack the player and reduce HPs" do
    expect(player_2).to receive(:reduce_hp)
    subject.attack(player_2)
  end
end