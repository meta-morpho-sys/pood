require 'gear'

RSpec.describe Gear do
  subject do
    Gear.new(
      :chainring  => 52,
      :cog        => 11,
      :wheel      => Wheel.new(26, 1.5)
    )
  end

  describe '#ratio' do
    it 'finds a ratio' do
      expect(subject.ratio).to be_within(0.01).of(4.72)
    end
  end

  describe '#gear_inches' do
    it 'gives gear inches' do
      expect(subject.gear_inches).to be_within(0.01).of(137.09)
    end
  end

end
