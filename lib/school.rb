require 'pry'


class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student_name, grade)
    if roster[grade] == nil ? roster[grade].push(student_name) : roster[grade] = []
    end
  end
  def grade(grade)
    roster[grade]
  end
  def sort
    roster.each { |k, v| roster[k] = v.sort }
  end
end
