class Sieve
  def initialize(n)
    @n = n
    @primes = [2]
  end

  def primes
    return [] if @n < 2
    return [2] if @n == 2
    (2..Math.sqrt(@n).to_i).reduce([*2..@n]) do |primes, i|
      primes - (i*2..@n).step(i).to_a
    end
  end
end

module BookKeeping
  VERSION = 1
end