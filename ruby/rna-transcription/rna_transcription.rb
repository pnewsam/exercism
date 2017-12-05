module Complement

  def self.of_dna(dna)
    rna = dna.split('').map do |n|
      case n
      when "A"
        "U"
      when "T"
        "A"
      when "G"
        "C"
      when "C"
        "G"
      else
        return ""
      end
    end.join('')
  end

end

module BookKeeping
  VERSION = 4
end