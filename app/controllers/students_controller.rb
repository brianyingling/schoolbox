class StudentsController < ApplicationController
  def index
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
  end
  def update
  end
  def destroy
  end
end