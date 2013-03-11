class CoursesController < ApplicationController
  def index
    @courses = @auth.courses.order(:name)
  end
  def new
  end
  def create
  end
  def show
    @course = Course.find(params[:id])
  end
  def edit
  end
  def update
  end
  def destroy
  end
end