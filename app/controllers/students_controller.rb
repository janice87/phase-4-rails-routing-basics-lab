class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.all.order(grade: :desc)
    render json: grades
  end
  # return JSON, list of all students, ordered by grade from highest to lowest

  def highest_grade
    highest = Student.all.order(grade: :desc).first
    render json: highest
  end
  # return JSON data representing the one student with the highest grade
  # while the other two routes should return an array of data, this route should return one student object!

end
