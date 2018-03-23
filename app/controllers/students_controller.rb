class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student.find(params[:id])
  end

  def update
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
