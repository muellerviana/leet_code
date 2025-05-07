require 'byebug'

def roman_to_integer(s)
  roman_to_int = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }
  
  result = 0
  i = 0
  



  while i < s.length - 1
    byebug
    current_value = roman_to_int[s[i]] # a - 1 | 
    next_value = roman_to_int[s[i + 1]] # a = 1 |
    
    if current_value < next_value # a - 1
      result -= current_value
    else
      result += current_value
    end
    
    i += 1
  end
  
  result += roman_to_int[s[-1]]
  
  result
end

puts roman_to_integer('III') #3
puts roman_to_integer('LVIII') #5
puts roman_to_integer('MCMXCIV') #7