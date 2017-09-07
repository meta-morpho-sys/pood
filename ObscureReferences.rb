# An example of leaky references
class ObscuringReferences
  attr_reader :data
  def initialize(data)
    @data = data
  end

  def diameters
    # 0 is rim, 1 is tire
    data.collect { |cell|
    cell[0] + (cell[1] * 2)}
  end
end

p obsref = ObscuringReferences.new([[622, 20], [622, 23]]).diameters
