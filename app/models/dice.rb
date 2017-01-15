class Dice

DEFAULT_VALUE = 6.freeze
  def initialize(size)
    @size = size
  end

  def roll
    if @size > 0
      rand(1..@size)
    else
      rand(1..DEFAULT_VALUE)
    end
  end

end
