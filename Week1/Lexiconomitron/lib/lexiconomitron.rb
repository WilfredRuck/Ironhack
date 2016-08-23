class Lexiconomitron
	def eat_t(array)
		new_word = []
		
		array.each do |word|
			if word.length <=4
				new_word.push(word)
			end
		end
		new_word.each do |word|
			word.gsub!("t","")
			word.gsub!("T","")
		end
		p new_word
	end

end