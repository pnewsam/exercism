module Prime
  def self.nth(n)
    primes = [2]
    while primes.length < n
      primes << self.next_prime(primes)
    end
    primes.last
  end

  def self.next_prime(primes)
    next_prime = nil
    t = primes.last
    until next_prime
      t += 1
      (primes).each do |n|
        if t % n == 0
          next_prime = t
          break
        end
      end
    end
    next_prime
  end
end

module BookKeeping
  VERSION = 1
end