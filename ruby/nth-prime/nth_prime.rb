module Prime
  def self.nth(n)
    raise ArgumentError if n == 0
    primes = [2]
    while primes.length < n
      primes << self.next_prime(primes.last)
    end
    primes.last
  end

  def self.next_prime(n)
    prime = nil
    x = n + 1
    until prime
      if self.prime?(x)
        prime = x
      else
        x += 1
      end
    end
    prime
  end
  
  def self.prime?(n)
    (2..Math.sqrt(n)).each{|x|return false if n % x == 0}
    true
  end
end

module BookKeeping
  VERSION = 1
end