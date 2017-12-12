module RunLengthEncoding

  def self.encode(string)
    string.chars
    .chunk_while{|x,y|x==y}.to_a
    .map{|x|x.length.to_s+x[0]}.join('')
    .gsub(/[1](?=[a-zA-Z\s])/,"")
  end

  def self.decode(string)
    string.scan(/[\d]*[a-zA-Z\s]{1}/)
    .map do |x|
      out = x
      if x.strip != ""
        count = (x.scan(/\d+/)[0] || 1).to_i
        letter = x.scan(/[a-zA-Z\s]/)[0]
        if !count then out = letter else out = (letter * count) end
      end
      out
    end
    .join('')
    .gsub(/[1](?=[a-zA-Z])/,"")
  end

end

module BookKeeping
  VERSION = 3
end