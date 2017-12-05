module Raindrops
  def self.convert(int)
    output = ''
    if int % 3 == 0
      output += 'Pling'
    end
    if int % 5 == 0
      output += 'Plang'
    end
    if int % 7 == 0
      output += 'Plong'
    end
    output.empty? ? int.to_s : output
  end
end

module BookKeeping
  VERSION = 3
end