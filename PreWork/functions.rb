def sort_sentence (input)

array_sentence = input.split
puts array_sentence.sort

end


puts "Please type in a short sentence: "
sentence = gets.chomp

sort_sentence(sentence)