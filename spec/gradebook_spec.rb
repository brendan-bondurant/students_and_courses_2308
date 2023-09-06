require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  describe '#initialize' do
    it 'has a gradebook' do
      gradebook = Gradebook.new('Default')

      expect(gradebook).to be_instance_of(Gradebook)
    end
    it 'has an instructor' do
      gradebook = Gradebook.new('Default')

      expect(gradebook.instructor).to be_instance_of(String)
    end
    it 'has courses' do
      gradebook = Gradebook.new('Default')

      expect(gradebook.courses).to eq([])
    end
  end
  describe '#add courses' do
    it 'can add courses' do
      gradebook = Gradebook.new('Default')
      course_1 = Course.new("Calculus", 2)
      gradebook.add_course(course_1)
      expect(gradebook.courses.count).to eq(1)
      course_2 = Course.new("Physics", 6)
      gradebook.add_course(course_2)
      expect(gradebook.courses.count).to eq(2)
    end
    it 'can display courses' do
      gradebook = Gradebook.new('Default')
      course_1 = Course.new("Calculus", 2)
      gradebook.add_course(course_1)
      course_2 = Course.new("Physics", 6)
      gradebook.add_course(course_2)
      expect(gradebook.courses.count).to eq(2)
      expect(gradebook.display_course).to be_instance_of(Array)
    end
  end
  describe '#list_all_students' do
    xit 'stores the students as a hash' do
      gradebook = Gradebook.new('Default')
      course_1 = Course.new("Calculus", 2)
      course_2 = Course.new("Physics", 6)
      gradebook.add_course(course_1)
      gradebook.add_course(course_2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      student3 = Student.new({name: "Eliot", age: 24})
      student4 = Student.new({name: "Jon", age: 22})
      course_1.enroll(student1)
      course_1.enroll(student2)
      course_2.enroll(student2)
      course_2.enroll(student3)
      course_2.enroll(student4)
      expect(gradebook.list_all_students).to be_instance_of(Hash)
    end
  end
  describe '#student_below' do
    it "lists students who aren't passing" do
    gradebook = Gradebook.new('Default')
    course_2 = Course.new("Physics", 6)
    gradebook.add_course(course_2)
    student2 = Student.new({name: "Jordan", age: 29})
    student3 = Student.new({name: "Eliot", age: 24})
    student4 = Student.new({name: "Jon", age: 22})
    course_2.enroll(student2)
    course_2.enroll(student3)
    course_2.enroll(student4)
    student2.log_score(90)
    student2.log_score(50)
    student2.log_score(80)
    student3.log_score(70)
    student3.log_score(40)
    student3.log_score(30)
    student4.log_score(90)
    student4.log_score(90)
    student4.log_score(80)
    expect(gradebook.students_below(75)).to be_instance_of(Array)

  end
end


end