require 'ruby-dictionary'

class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(first_word,second_word)
    	
    	puts first_word
    	
    	fw = first_word.split()
    	sw = second_word.split()

    	x = 0
    	i = ""
    	c = 0
    	
    	while x <= first_word.length
    		
    		if x == first_word.length
    			x = 0
    		end 
    		
    		if c > 50 
    			break
    		end
        	fw.each do |letter1|
        		sw.each do |letter2|
        			
        			c += 1
        			
        			i = letter1[x]
        			if letter2[x] != letter1[x]
        				letter1[x] = letter2[x]

	        			if @dictionary.exists?(fw.join)
	        				puts fw.join
	        			else
	        				letter1[x] = i
	        			end
	        			
	        			if (fw.join == sw.join) 
	        				x += 100
	        			end 
        			end



        		end		
        	end
        	x += 1
    	end
    end
end

dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
# my_chain.find_chain("cat", "lad")
# puts ""
# my_chain.find_chain("cat", "pig")
# puts ""
my_chain.find_chain("ruby", "code")
# cat
# cot
# cog
# dog