require "player"

describe Player do
  subject(:bob) { Player.new("Bob") }
  subject(:bill) { Player.new("Bill") }

  describe "#name" do
    it "returns the name" do
      expect(bob.name).to eq "Bob"
    end
  end

  describe "#hit_points" do
    it "returns the hit points" do
      expect(bob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe "#reduce_hp" do
    it "reduces the player hit points" do
      expect { bob.reduce_hp }.to change { bob.hit_points }.by(-10)
    end
  end
 end