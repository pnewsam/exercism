module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming

  def self.hamming_distance(first_strand, second_strand)
    first_strand = first_strand.chars
    second_strand = second_strand.chars
      (0..first_strand.length).count do |idx|
      first_strand[idx] != second_strand[idx]
      end
  end

  def self.compute(first_strand,second_strand)
    unless first_strand.length == second_strand.length
      raise ArgumentError.new('You must enter two strands with the same nucleotide length!')
    end
    hamming_distance(first_strand,second_strand)
  end

end


puts Hamming.compute('GATTG','GATAC')