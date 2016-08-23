#class ProgrammingLanguage
#  attr_accessor :name, :age, :type
#  def initialize(name, age, type)
#    @name = name
#    @age = age
#    @type = type
#  end
#end
#
#  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
#  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
#  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
#  go = ProgrammingLanguage.new("Go", 6, "Static")
#  rust = ProgrammingLanguage.new("Rust", 5, "Static")
#  swift = ProgrammingLanguage.new("Swift", 2, "Static")
#  java = ProgrammingLanguage.new("Java", 20, "Static")
#
#  array_of_languages = [ruby, python, javascript, go, rust, swift, java]
#
#def array_printer(array)
#  array.each do | language |
#    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
#  end
#end
#
#array_printer(array_of_languages)
#
# class ProgrammingLanguage
#   attr_accessor :name, :age, :type
#   def initialize(name, age, type)
#     @name = name
#     @age = age
#     @type = type
#   end
# end

#   ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
#   python = ProgrammingLanguage.new("Python", 24, "Dynamic")
#   javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
#   go = ProgrammingLanguage.new("Go", 6, "Static")
#   rust = ProgrammingLanguage.new("Rust", 5, "Static")
#   swift = ProgrammingLanguage.new("Swift", 2, "Static")
#   java = ProgrammingLanguage.new("Java", 20, "Static")

#   array_of_languages = [ruby, python, javascript, go, rust, swift, java]

# def array_printer(array)
#   new_array = array.map do | language |
#   	language.age += 1
#     puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
#   end
# end

# array_printer(array_of_languages)

class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
    array.each do | language |
	    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
	end
end

array_printer(array_of_languages)

puts "------------------------"


new_array = array_of_languages.map do | language |
   	language.age += 1
   	language
 end

array_printer(new_array)

puts "------------------------"


new_sorted = array_of_languages.sort{|x,y| y.age<=>x.age}

array_printer(new_sorted)

puts "_________________________"


array_of_languages.delete_at(6)

array_printer(array_of_languages)

puts "____!______!______________"

new_shuffle = array_of_languages.shuffle

array_printer(new_shuffle)

puts "**************************"

new_drop = array_of_languages.drop(2)

array_printer(new_drop)

puts "+++++++++++++++++++++++++"

new_length = array_of_languages.length

p new_length

puts "!!!!!!!!!!!!!!!!!!!!!!!!!"

new_clear = array_of_languages.clear

array_printer(new_clear)

puts "*************************"
