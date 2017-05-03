# https://en.wikipedia.org/wiki/Arithmetic_progression
def sum_n(difference)
  lambda { |start, number| number / 2.0 * (2 * start + (number - 1) * difference) }
end

threshold = 999

sum3 = sum_n(3).call(3, threshold / 3)

n5 = threshold / 5
sum5 = sum_n(5).call(5, threshold / 5)

sum = sum3 + sum5 - sum_n(15).call(15, threshold / 15)

# Intersection from athrimetric progression of 3 and 5 is 15
