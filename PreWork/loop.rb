numbers = [1,2,3]

numbers.each do |item|
	puts "--> #{item}"
end


my_hash = {}
my_hash["Bob"] = "Bob the Builder"
my_hash["Will"] = "Will the Fred"

my_hash.each do |key,value|
	puts "#{key} stands for #{value}"
end