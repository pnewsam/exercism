module Pangram
  def self.pangram?(str)
    return false if str.empty?
    counts = 'abcdefghijklmnopqrstuvwxyz'.chars.zip([0]*26).to_h
    str.chars.select{|c|c[/[a-zA-Z]/]}.each{|c|counts[c.downcase]+=1}
    counts.values.none?{|v|v.zero?}
  end
end

module BookKeeping
  VERSION = 6
end