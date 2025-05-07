# This Ruby script extracts words from a string and counts how often each appears.
# It uses regular expressions, downcasing, and a hash for frequency 
# counting—showcasing basic text analysis with Ruby. Page 48 of Programming Ruby
require 'byebug'

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