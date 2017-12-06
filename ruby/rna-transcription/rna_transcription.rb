module Complement

  def self.of_dna(dna)
    return '' if dna.match(/[^ATGC]/)
    dna.tr('ATGC','UACG')
  end

end

module BookKeeping
  VERSION = 4
end