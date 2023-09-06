class Student
  attr_reader :name, :age, :scores
  def initialize (student_info)
    @name = student_info.fetch(:name)
    @age = student_info.fetch(:age)
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    total = []
    scores.each do |score|
      total << score.to_f
    end
    total.sum / scores.count
  end
end
