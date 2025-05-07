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

# second part

row_text = %{Me chama muito a atenção de que esse vídeo conseguiu atingir agora 78 milhões de pessoas em pouco mais de 12 horas e o entendimento do governo é que isso de deve à ação das big techs, que estariam manipulando os algoritmos, e que não se deve à gravidade do episódio combinado com a  do outro cara que vai fazer o que eu estou escrevendo ou a mesma e onde do.}

word_list = words_from_string(row_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word,count| count } 
top_five = sorted.last(5)
  
for i in 0...5
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end