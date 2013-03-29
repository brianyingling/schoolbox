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
    @course = Course.find(params[:id])
    render :new
  end
  def update
    course = Course.find(params[:id])
    course.update_attributes(params[:course])
    redirect_to courses_path
  end
  def destroy
    course = Course.find(params[:id])
    course.delete
    redirect_to courses_path
  end
end