require 'player'

describe Player do

  let (:player) { Player.new("Reeshul") }

  it "returns name" do
    expect(player.name).to eq("Reeshul")
  end

end