module Nucleotide
  def self.from_dna(str)
    raise ArgumentError if str.match?(/[^ATCG]/)
    str
  end
end
class String
  def histogram
    %w{A T C G}.each_with_object({}){|x,o|o[x]=self.count(x)}
  end
end