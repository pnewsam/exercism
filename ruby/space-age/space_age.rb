class SpaceAge
  def initialize(sec)
    @age = sec.to_f
  end
  def on_earth
    @age / 31557600
  end
  def on_mercury
    age_from_op(0.2408467)
  end
  def on_venus
    age_from_op(0.61519726)
  end
  def on_mars
    age_from_op(1.8808158)
  end
  def on_jupiter
    age_from_op(11.862615)
  end
  def on_saturn
    age_from_op(29.447498)
  end
  def on_uranus
    age_from_op(84.016846)
  end
  def on_neptune
    age_from_op(164.79132)
  end
private
  def age_from_op(op_in_years)
    @age / y_to_s(op_in_years)
  end
  def y_to_s(y)
    y * 365.25 * 24 * 60 * 60
  end
end
module BookKeeping
  VERSION = 1
end