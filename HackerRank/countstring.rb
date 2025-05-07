def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

string = "A higher order function is a tool that takes other functions as parameters or returns them as a result."

word_list = words_from_string(string)

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end

  counts
end

p count_frequency(word_list)