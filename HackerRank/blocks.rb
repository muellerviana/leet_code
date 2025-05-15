def factorial(n)
  return 1 if n <= 1

  yield(n)
end

n = gets.to_i

factorial(n) do |n|
  result = 1
  (1..n).each { |i| result *= i }
  puts result
end
