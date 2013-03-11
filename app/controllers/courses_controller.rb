class CoursesController < ApplicationController
  def index
    @courses = @auth.courses.order(:name)
  end
  def new
    @course = Course.new
  end
  def create
    Course.create(params[:course])
    redirect_to courses_path
  end
  def show
    @course = Course.find(params[:id])
  end
  def edit
  end
  def update
  end
  def destroy
    course = Course.find(params[:id])
    course.delete
    redirect_to courses_path
  end
end