class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
