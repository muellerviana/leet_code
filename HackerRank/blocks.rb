def factorial(n)
  yield(n)
end

n = gets.to_i

factorial(n) do |n|
  puts n.(n-1)
end 