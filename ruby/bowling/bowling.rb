class Game
  def initialize
    @frames = Array.new(11){|a|a=[]}
    @round = 0
    @throw = 0
    @game_started = false
  end

  def roll(pins)
    @game_started = true if !@game_started
    p "Round is #{@round} and Throw is #{@throw} and Pins is #{pins}"
    raise BowlingError if game_over? || !roll_valid?(pins)
    @frames[@round][@throw] = pins
    progress(pins)
    p @frames
  end
  
  def score
    raise BowlingError if !@game_started
    @frames.take(10).each_with_index.map{|f,r|score_round(f,r)}.sum
  end

private
  def score_round(throws,round)
    if strike?(throws,round)
      calc_strike(throws,round)
    elsif spare?(throws)
      calc_spare(throws,round)
    else
      throws.sum
    end
  end

  def progress(pins)
    if @throw == 1
      @throw = 0
      @round += 1
    elsif @throw == 0 && pins == 10 && @round != 10
      @round += 1
    elsif @throw == 0
      @throw += 1
    else
      "Progress error!"
    end
  end

  def throws(round)
    @frames[round]
  end

  def calc_strike(throws,round)
    if throws(round+1).length == 2
      throws(round).sum + throws(round+1).sum
    elsif throws(round+1).length == 1
      throws(round).sum + throws(round+1).first + throws(round+2).first
    else
      "calc_strike error!"
    end
  end

  def calc_spare(throws,round)
    "calc_spare!"
    throws(round).sum + throws(round+1).first
  end
  
  def strike?(throws,round)
    throws[0] == 10 && round != 10
  end

  def spare?(throws)
    throws.sum == 10
  end

  def overtime?
    @frames[9].sum == 10
  end

  def double_overtime?
    overtime? && @frames[10].first == 10
  end

  def game_over?
    @frames.take(10).all?{|t|t.length==2||t.first==10} && !(overtime?) ||
    (overtime? && @frames[]) ||
    double_overtime? && 
  end

  def roll_valid?(pins)
    raise BowlingError if @round == 10 && @throw == 1 && @frames[10].first != 10 && @frames[10].first + pins > 10
    zero_to_ten = pins >= 0 && pins <= 10
    sum_less_than_ten = @throw != 1 || @round == 10 || @frames[@round][0] + pins <= 10
    zero_to_ten && sum_less_than_ten
  end
end

class Game::BowlingError < StandardError
end

module BookKeeping
  VERSION = 3
end