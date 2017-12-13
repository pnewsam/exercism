module PhoneNumber
  def self.clean(str)
    clean = str.gsub(/[^\d]/,"")
    m = clean.match(/(1)*(\d{3}).*(\d{3}).*(\d{4})/)
    return nil if clean.length > 11 || clean.length < 10
    return nil if clean.length == 11 && clean[0] != '1'
    return nil if m[2][0] == '1' || m[2][0] == '0'
    return nil if m[3][0] == '1' || m[3][0] == '0'
    m[2] + m[3] + m[4]
  end
end

module BookKeeping
  VERSION = 2
end