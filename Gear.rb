class Gear
  attr_reader :chaining, :cog, :wheel
  def initialize(chaining, cog, rim, tire)
    @chaining = chaining
    @cog = cog
    @wheel = Wheel.new(rim, tire)
  end

  def ratio
    chaining/cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
      rim + (tire * 2)
    end
  end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
