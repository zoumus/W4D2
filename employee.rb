# require 'manager.rb'
class Employee
    attr_reader :name, :title, :salary

    def initialize(name,title,salary,boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        salary * multiplier
    end
end
