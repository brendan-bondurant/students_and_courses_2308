class Gradebook
  attr_reader :courses, :instructor
  def initialize(instructor)
    @instructor = instructor
    @courses = []

  end

  def add_course(course)
    @courses << course
  end

  def display_course
    return @courses
  end
  
  # stuck on this so doing the students_below
  # def list_all_students
  #   list = {}
  #   courses.each do |course|
  #     list << [:course] course.students
      
  #   end
  # end

  def students_below(threshold)
    failing = []
    courses.each do |course|
    course.students.each do |student|
      if student.grade < threshold
      failing << student
    end
    return failing
  end
end
end



end