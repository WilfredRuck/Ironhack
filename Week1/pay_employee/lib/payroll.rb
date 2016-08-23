class Payroll
    def initialize(employees)
        @employees = employees
    end


  def notify_employee
          @employees.each do |x|
          puts "#{x.name}, your gross weekly pay is #{x.calculate_salary}, net weekly pay is #{x.calculate_salary - (x.calculate_salary * 0.18)}"
          end

  end

  def pay_employees

  		@employees.each do |x|
  			puts "#{x.name} => #{x.calculate_salary - (x.calculate_salary * 0.18)}"     
  		end

      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
  end
ends