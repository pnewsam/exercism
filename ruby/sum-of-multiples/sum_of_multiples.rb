class SumOfMultiples
  def initialize(*args)
    @args = args
  end
  def to(limit)
    @args.reduce([]){|a,x|a +(x...limit).step(x).to_a}
    .uniq.reduce(:+) || 0
  end
end

module BookKeeping
  VERSION = 2
end