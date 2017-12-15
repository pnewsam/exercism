module Acronym
  def self.abbreviate(str)
    str.split(/\s|-/).map{|x|x[0].upcase}.join('')
  end
end
module BookKeeping
  VERSION = 4
end