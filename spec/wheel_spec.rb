require 'wheel'

describe Wheel do
  subject(:wheel) { described_class.new(26, 1.5) }


  describe '#diameter'do
    it 'calculates diameter of a wheel'do
      expect(subject.diameter).to eq(29)
    end
  end

  describe '#circumference' do
    it 'calculates the circumference'do
      expect(subject.circumference).to be_within(0.1).of(91.10)
    end
  end

end
