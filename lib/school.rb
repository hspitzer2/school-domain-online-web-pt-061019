class School
  attr_reader :name, :roster

  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each {|key,value| value.sort!}
   end
end
