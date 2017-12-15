class Anagram
  def initialize(word)
    @word = word.downcase
    @chars = word.downcase.chars.sort.join("")
  end
  def match(a)
    a.select do |x|
      # p "#{x.chars.sort.join("").downcase} equals #{@chars}?"
      # p "#{x.downcase} equals #{@word}?"
      x.downcase.chars.sort.join("") == @chars &&
      x.downcase != @word
    end
  end
end
module BookKeeping
  VERSION = 2
end