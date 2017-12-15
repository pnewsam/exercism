class School
  attr_reader :students
  def initialize
    @roster = Hash.new{|h,k|h[k]=[]}
  end
  def students(grade)
    @roster[grade]
  end
  def add(student, grade)
    @roster[grade].push(student).sort!
  end
  def students_by_grade
    a=[]
    @roster.each_pair{|k,v|a<<{grade:k,students:v}}
    a.sort_by{|x|x[:grade]}
  end
end

module BookKeeping
  VERSION = 3
end
