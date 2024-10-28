require 'byebug'

def roman_to_int(s) 
  conversion = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  s.each_char do |char|
    puts char
  end
end

puts roman_to_int('III')
puts roman_to_int('LVIII')
puts roman_to_int('MCMXCIV')