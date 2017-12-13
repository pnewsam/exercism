module ETL
  def self.transform(old)
    new = {}
    old.each_pair{|k,v|v.each{|x|new[x.downcase]=k}}
    new
  end
end
module BookKeeping
  VERSION = 1
end