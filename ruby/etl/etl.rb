module ETL
  def self.transform(old)
    old.reduce({}){|new,(k,v)|v.each{|c|new[c.downcase]=k};new}
  end
end
module BookKeeping
  VERSION = 1
end

