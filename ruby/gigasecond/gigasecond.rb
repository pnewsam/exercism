# Pseudocode
# Divide first by 


def gigasecond
  numbers = [52, 7, 24, 60, 60]
  words = ['years', 'weeks', 'days', 'hours', 'minutes']
  printout = ''
  dividend = 10**9
  (numbers.length).times do | y |
    divisor = ''
    (numbers.length - y).times do | x |
      divisor.concat(numbers[x-1].to_s + "*")
    end
    divisor = (eval divisor.chop)
    remainder = dividend % divisor
    quotient = dividend / divisor
    dividend = remainder
    printout.concat(quotient.to_s + " #{words[(-y + 5)]}" + ' and ')
  end
  p printout
end

gigasecond


def gigasecond
  numbers = [52, 7, 24, 60, 60]
  words = ['years', 'weeks', 'days', 'hours', 'minutes']
  calculate = ''
  numbers.each do | no |
    if numbers.index(no) > 