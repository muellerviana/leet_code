require 'byebug'

def is_valid(s)
  opener = ["(", "{", "["] 
  closer = [")", "}", "]"]

  stack = []
  

  s.each_char do |a|
    if opener.include?(a)
      stack.push(a)
    elsif closer.include?(a)
      if stack.empty? || opener.index(stack.pop) != closer.index(a)
        return false
      end
    end
  end

  stack.empty?
end


puts is_valid("()")