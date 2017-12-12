module Binary
  def self.to_decimal(b)
    raise ArgumentError if b.match?(/[^01]/)
    b.reverse.split('').each_with_index.reduce(0){|sum,(i,idx)|sum+i.to_i*(2**idx)}
  end
end

module BookKeeping
  VERSION = 3
end