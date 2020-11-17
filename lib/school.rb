require 'pry'

class School
    def initialize(name)
        @roster = {}
        @name = name
    end

    attr_accessor :roster
    attr_accessor :name

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sort_roster = @roster.map do |grade, student_arr|
            [grade, student_arr.sort]
        end
        return sort_roster.to_h
    end
end