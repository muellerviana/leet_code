def remove_element(nums, val)
  j = 0 # Pointer for the new array length
  nums.each_with_index do |num, i|
    if num != val
      nums[j] = num # Place non-val elements at the start
      j += 1
    end
  end
  j # Return the new length
end


puts remove_element([3,2,2,3], 3)
puts remove_element([0,1,2,2,3,0,4,2], 2)