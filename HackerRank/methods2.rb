def full_name(first, *rest)
  rest.reduce(first) do |a,b|
      "#{a} #{b}"
  end
end

puts full_name("Muller","Mendes","Viana")