my_hash = {}

my_hash["Bob"] = "Bob the Builder"
my_hash["Will"] = "Will the Fred"

puts my_hash["Bob"]
puts my_hash["Will"]


my_hash.has_key?("Will")
my_hash.has_value?("bobby")

my_hash.select { |key, value| key.include?("B")}

