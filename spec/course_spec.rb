require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  describe '#initialize' do 
    it 'course exists' do
      course = Course.new("Calculus", 2)
      
      expect(course).to be_instance_of(Course)
      expect(course.name).to eq ("Calculus")
      expect(course.capacity).to eq(2)
      expect(course.students).to be_instance_of(Array)
      expect(course.students).to eq([])
      expect(course.full?).to eq(false)
    end
  end
  describe '#enroll' do
  it 'can have students' do
    course = Course.new("Calculus", 2)
    expect(course.students).to eq([])
    expect(course.full?).to eq(false)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course.enroll(student1)
    course.enroll(student2)
    expect(course.students).to be_instance_of(Array)
    expect(course.students.count).to eq(2)
    expect(course.full?).to eq(true)
    end
  end
end
