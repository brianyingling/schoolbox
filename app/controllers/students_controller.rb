class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
    @student = Student.new
  end
  def create
    Student.create(params[:student])
    redirect_to root_path
  end
  def show
    @student = Student.find(params[:id])
  end
  def edit
    @student = Student.find(params[:id])
    render :new
  end
  def update
    student = Student.find(params[:id])
    student.update_attributes(params[:student])
    redirect_to root_path
  end
  def destroy
    student = Student.find(params[:id])
    student.delete
    redirect_to root_path
  end
end