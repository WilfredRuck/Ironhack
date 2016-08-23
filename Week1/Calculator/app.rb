require_relative("lib/calculator.rb")


calculator = Calculator.new

p calculator.add("7$7") == 14
p calculator.add("8$4") == 12
p calculator.add("7,7,1,2") == 17
p calculator.add("7$7$1$2") == 17
p calculator.add("7$7,1,2") == 17


p calculator.add("6") == 6
p calculator.add("6") == 6
p calculator.add("") == 0

# p calculator.add("") ==
# p calculator.add("") ==
# p calculator.add("") ==
