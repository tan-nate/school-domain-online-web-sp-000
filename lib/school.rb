require 'pry'

class School
  attr_reader :school_name
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
    #binding.pry
  end
  
  def grade(grade)
    @roster[grade]
  end
end

#binding.pry