require_relative("lib/employees.rb")
require_relative("lib/hourly_employee.rb")
require_relative("lib/salaried_employee.rb")
require_relative("lib/multi_pay_employee.rb")
require_relative("lib/payroll.rb")


josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)

puts josh.calculate_salary

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

puts nizar.calculate_salary

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

puts ted.calculate_salary

mike = HourlyEmployee.new('Mike', 'mmullen227@gmail.com', 15, 40)
will = HourlyEmployee.new('Will', 'will@gmail.com', 15, 40)
alain = HourlyEmployee.new('Alain', 'alain@gmail.com', 15, 40)




employees = [josh, nizar, ted, mike, will, alain]
payroll = Payroll.new(employees)
payroll.pay_employees
# josh => 1750
# nizar => 19230
# etc
# etc
payroll.notify_employee