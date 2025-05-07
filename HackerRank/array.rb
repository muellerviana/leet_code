arr = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]

start_pos = 2
length = 3
def start_and_length(arr, start_pos, length)
  # return `length` elements of the Array variable `arr` starting from `start_pos`
  arr[start_pos,length]
end

puts "start and length #{start_and_length(arr, start_pos, length)}"