class Dice

  def initialize(size)
    @size = size
  end

  def roll
    rand(1..@size)
  end

end
