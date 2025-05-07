def remove_duplicates(nums)
  nums.each
end

puts remove_duplicates([1,1,2])
puts "Output: 2, nums = [1,2,_]"
puts remove_duplicates([0,0,1,1,1,2,2,3,3,4])
puts "Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]"