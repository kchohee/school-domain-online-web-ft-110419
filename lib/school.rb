require 'pry'


class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)
    if roster[grade] == nil
      roster[grade] = []
    end
    roster[grade] << student
  end
  def grade(grade)
    roster[grade]
  end
  def sort
    roster.each { |k, v| roster[k] = v.sort }
binding.pry
  end
end
add_student("Cho", 28)
