module Pangram
  def self.pangram?(str)
    alpha = [*'a'..'z']
    str.downcase.chars.each{|c|alpha.delete(c)}
    alpha.length == 0
  end
end

module BookKeeping
  VERSION = 6
end