class Integer
  def to_roman
    h = %w{1000 500 100 50 10 5 1}.map(&:to_i).zip(%w{M D C L X V I}).to_h
    abb = %w{DCCCC CCCC LXXXX XXXX VIIII IIII}.zip(%w{CM CD XC XL IX IV}).to_h
    out = ''
    rem = self
    h.each do |k, v|
      out += (v * (rem/k))
      rem -= (k * (rem/k))
    end
    abb.each{|k,v|out.gsub!(k,v)}
    out
  end
end

module BookKeeping
  VERSION = 2
end