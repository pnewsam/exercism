class Game
  def initialize
    @frames = Array.new(10){|a|a={throws:[],score:nil}}
    @round = 0
    @throw = 0
  end

  def roll(pins)
    p "Round is #{@round} and Throw is #{@throw} and Pins is #{pins}"
    if @round == 9
      if pins == 10 || (pins + @frames[@round][:throws].sum == 10)
        @frames << {throws:[],score:0}
      end
    end
    p @frames
    @frames[@round][:throws] << pins
    progress(pins)
  end

  def score
    @frames.each_with_index{|obj,round|obj[:score] = round_score(obj[:throws], round)}
    @frames.map{|obj|obj[:score]}.reduce(:+)
  end

private
  def progress(pins)
    @round += 1 if @throw == 1 || (@throw == 0 && pins == 10)
    if @throw == 0 && pins != 10
      @throw = 1
    else
      @throw = 0
    end
  end

  def round_score(throws,round)
    is_strike = (throws[0] == 10)
    return 0 if round == 10
    if is_strike && subsequent_throws(round).length == 2
      throws[0] + subsequent_throws(round).sum
    elsif is_strike && subsequent_throws(round).length == 1
      throws[0] + subsequent_throws(round)[0] + @frames[round + 2][:throws][0]
    elsif throws.sum == 10
      throws.sum + subsequent_throws(round)[0]
    else
      throws.sum
    end
  end

  def subsequent_throws(round)
    @frames[round + 1][:throws]
  end
end
module BookKeeping
  VERSION = 3
end