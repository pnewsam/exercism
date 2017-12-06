class Sieve
  def initialize(n)
    @n = n
    @primes = [2]
  end

  def primes
    return [] if @n < 2
    return [2] if @n == 2
    primes = [*2..@n]
    (2..Math.sqrt(@n).floor).each do |i|
      primes = primes - (i*2..@n).step(i).to_a
    end
    primes
  end
end

module BookKeeping
  VERSION = 1
end