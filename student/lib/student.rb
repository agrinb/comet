require 'pry'
require 'pry-debugger'


class Student

  def initialize(first_name, last_name, grades)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
  end

  # define additional method here...
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def full_name
    @first_name + ' ' + @last_name
  end

  def grade_average
    if @grades.any?
      @grades = @grades.map { |grade| grade.to_f }
      avg = @grades.inject(:+) / @grades.length
    else
      avg = 0
    end
    avg
  end

  def letter_grade
   # case grade_average
   #      when grade_average >= 90
   #        'A'
   #      when grade_average >= 80
   #        'B'
   #      when grade_average >= 70
   #        'C'
   #      when grade_average >= 60
   #        'D'
   #      when grade_average < 60
   #        'F'
   #  end

      if grade_average >= 90
        'A'
      elsif grade_average >= 80
        'B'
      elsif grade_average >= 70
        'C'
      elsif grade_average >= 60
        'D'
      elsif grade_average < 60
        'F'
      end

  end

  def passed?
    grade_average >= 60
  end

  def to_s
    "#{first_name} #{last_name}, #{letter_grade} (#{grade_average})"
  end

end
