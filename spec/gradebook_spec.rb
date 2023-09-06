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
  end

end