module PrimeFactors
  def self.for(n)
    product = n
    factors = []
    while product > 1
      x = 2
      until product % x == 0
        x += 1
      end
      factors << x
      product /= x
    end
    factors
  end
end