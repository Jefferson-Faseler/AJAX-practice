class Dice

  def initialize(size)
    size.to_i > 0 ? @size = size.to_i : @size = 6
  end

  def roll
    rand(1..@size)
  end

end
