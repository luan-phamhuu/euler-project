fibonacies = [1, 2]
previous_fibo = fibonacies.first
last_fibo = fibonacies.last

while last_fibo <= 4_000_000
  previous_fibo, last_fibo = [last_fibo, previous_fibo + last_fibo]
  fibonacies << last_fibo
end

fibonacies.select { |f| f % 2 == 0 }.reduce(&:+)
