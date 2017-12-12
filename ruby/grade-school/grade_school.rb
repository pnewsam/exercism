class School
  attr_reader :students
  def initialize
    @roster = [*1..7].zip([[],[],[],[],[],[],[]]).to_h
  end
  def students(grade)
    @roster[grade]
  end
  def add(student, grade)
    @roster[grade] << student
    @roster.each_value{|v|v.sort!}
  end
  def students_by_grade
    a = []
    @roster.reject{|k,v|v.empty?}.each_pair{|k,v|a<<{grade: k, students: v}}
    a
  end
end

module BookKeeping
  VERSION = 3
end
