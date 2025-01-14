def vowel_strings(words, left, right)
  words.each do |word| 
   word.upcase
  end
end


puts vowel_strings(["hello", "ola", "windows","linux","arara","arame"], 1, 2)