class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  def create
    @student = Student.last
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    # @student =
    redirect_to students_path
  end

  def new
    @student = Student.new
    @student.save
  end


end
