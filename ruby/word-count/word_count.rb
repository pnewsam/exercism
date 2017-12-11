class Phrase
  def initialize(str)
    @phrase = str
  end
  def word_count
    counts = {}
    @phrase.gsub(/[^a-zA-Z0-9,'\s\n]/,'').downcase.split(/[,|\s|\n]+/).each do |w|
      word = w.gsub(/(\A'|'\z)/, '')
      if counts[word]
        counts[word] += 1
      else
        counts[word] = 1
      end
    end
    counts
  end
end

module BookKeeping
  VERSION = 1
end