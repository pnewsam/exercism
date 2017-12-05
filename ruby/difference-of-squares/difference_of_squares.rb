class Squares
  def initialize(int)
    @int = int
  end

  def square_of_sum
    (1..@int).reduce(:+)**2
  end

  def sum_of_squares
    (1..@int).map{|i|i**2}.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end