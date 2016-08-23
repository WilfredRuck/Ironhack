class SalariedEmployee < Employee
    def initialize(name, email, salary)
        @name = name
        @email = email
        @salary = salary
        
    end

    def calculate_salary
    	calculate_salary = @salary/52
    end

end