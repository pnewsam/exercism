class Array
  def accumulate
    a = []
    for i in self
      a << yield(i)
    end
    a
  end
end

module BookKeeping
  VERSION = 1
end