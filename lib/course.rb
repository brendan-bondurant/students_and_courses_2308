class Course
  attr_reader :name, :capacity, :students, :full
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
  end

  def full?
    if students.count < @capacity
    return @full
    else
      true
    end
  end

  def enroll(student)
    @students << student
  end
end
