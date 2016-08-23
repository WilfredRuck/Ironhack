class MultiPaymentEmployee < Employee
    def initialize(name, email, salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @salary = salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked

    end

    def calculate_salary
    	if @hours_worked > 40
    		overtime = @hours_worked - 40
    		overtime *= 250
    	end
      calculate_salary = (@salary/52) + overtime
    end
end