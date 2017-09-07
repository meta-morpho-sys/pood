class Gear
  attr_reader :chaining, :cog
  def initialize(chaining, cog)
    @chaining = chaining
    @cog = cog
  end

  def ratio
    chaining/cog.to_f
  end
end

puts Gear.new(52, 12).ratio
