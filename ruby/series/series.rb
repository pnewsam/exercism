class Series
  def initialize(str)
    @str = str
  end
  def slices(n)
    raise ArgumentError if n > @str.length
    i = 0
    a = []
    while i < @str.length - n + 1
      a << @str.slice(i,n)
      i += 1
    end
    a
  end
end