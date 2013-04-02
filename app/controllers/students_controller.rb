class StudentsController < ApplicationController
  def index
    @students = Student.all
    @klass ||= @auth.klasses.first
  end
  def new
    @student = Student.new
  end
  def create
    Student.create(params[:student])
    redirect_to root_path
  end
  def show
    binding.pry
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

  def enroll
    @klass = Klass.find(params[:Klasses])
    students = params[:student_ids]
    students.each {|s| @klass.students << Student.find(s)}
    @students = Student.all
  end

  def update_students
    binding.pry
  end


end