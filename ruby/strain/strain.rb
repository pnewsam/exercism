class Array
  def keep
    a = []
    self.each{|x|a << x if yield(x)}
    a
  end
  def discard
    a = []
    self.each{|x|a << x if !yield(x)}
    a
  end
end