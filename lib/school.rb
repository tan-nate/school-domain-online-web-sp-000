require 'pry'

class School
  attr_reader :school_name
  
  ROSTER = {}
  
  def initialize(school_name)
    @school_name = school_name
  end
  
  def roster
    ROSTER
  end
  
  def add_student(student_name, grade)
    if ROSTER.keys.include?(grade)
      ROSTER[grade] << student_name
    else
      ROSTER[grade] = []
      ROSTER[grade] << student_name
    end
    #binding.pry
  end
end

#binding.pry