module BookKeeping
  VERSION = 5
end

class Gigasecond

  # def initialize

  # end

  def self.from(time_from)
    Time.at(time_from.to_i + (10 ** 9))
  end

end
