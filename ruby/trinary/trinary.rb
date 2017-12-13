class Trinary
  def initialize(str)
    @str = str
  end
  def to_decimal
    return 0 if @str.match?(/[^012]/)
    @str.reverse.split('').each_with_index.reduce(0){|sum,(i,idx)|sum+i.to_i*(3**idx)}
  end
end
module BookKeeping
  VERSION = 1
end