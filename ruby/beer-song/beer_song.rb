class BeerSong
  def initialize
  end
  def verse(n)
    one = n-1 > 0 ? "one" : "it"
    first = "#{bottles(n).capitalize} of beer on the wall, #{bottles(n)} of beer.\n"
    second = n > 0 ? "Take #{one} down and pass it around, #{bottles(n-1)} of beer on the wall.\n" : "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    first + second
  end
  def verses(start, stop)
    (stop..start).to_a.reverse.map{|n|verse(n)}.join("\n")
  end
private
  def bottles(n)
    case n
    when 1
      "1 bottle"
    when 0
      "no more bottles"
    else
      "#{n} bottles"
    end
  end
end
module BookKeeping
  VERSION = 3
end