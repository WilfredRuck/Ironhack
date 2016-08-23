class Shazam
	def crazy(array)
		new_word = []
		
		array.each do |word|
			new_word.push(word.reverse)
		end

		new_word.each do |word|
			word.gsub!("t","")
			word.gsub!("T","")
		end

		counter = 1 

		while counter <= new_word.length
			new_word.delete_at(counter)
			counter += 1
		end
		new_word
	end
end



# array = ["This", "is", "a", "boring", "test"]
# new_word = []

# array.each do |word|
#     p new_word.push(word.reverse)
# end

# new_word.each do |word|
#     word.gsub!("t", "")
#     word.gsub!("T", "")
# end

# new_array = new_word.slice! 1...-1

# p new_array
# p new_word