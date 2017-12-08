module Grains
  def self.total
    [*1..64].reduce{|sum,n|sum+square(n)}
  end
  def self.square(n)
    raise ArgumentError if n < 1 || n > 64
    2**(n-1)
  end
end

module BookKeeping
  VERSION = 1
end