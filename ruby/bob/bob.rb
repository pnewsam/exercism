module Bob
  def self.hey(remark)
    if remark == remark.upcase && remark.match?(/[A-Z]+/)
      "Whoa, chill out!"
    elsif remark.strip[-1] == "?"
      "Sure."
    elsif !remark.match?(/[^\s]/)
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end

module BookKeeping
  VERSION = 1
end