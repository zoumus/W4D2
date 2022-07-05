require_relative "employee.rb"

class Manager < Employee
    attr_accessor :employees

    def initialize(name,title,salary,boss=nil)
        super
        @employees = []
    end

    def bonus(multiplier)
        total_salary * multiplier
    end

    def total_salary
        total = 0

        self.employees.each do |employee|
            if employee.is_a?(Manager)
                total += employee.salary + employee.total_salary
            else
                total += employee.salary
            end
        end
        return total
    end
end



brock = Manager.new("Zuzu","Manager-A",80000,"Zuzu")

zuzu = Manager.new("Zuzu","Founder",5000000)


alan = Employee.new("bo_zhong","Manager-B",70000,"Zuzu")

bo = Employee.new("bo_zhong","TA",40000,"zuzu")

leo = Employee.new("derek","TA",50000,"brock")

p zuzu.employees = [bo, alan, brock]
p brock.employees = [leo]

p zuzu.bonus(5)
