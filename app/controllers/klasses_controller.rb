class KlassesController < ApplicationController
  def index
  end
  def new
    @klass = Klass.new
  end
  def create
    @klass = Klass.create(params[:klass])
    redirect_to courses_path
  end
  def show
    @klass = Klass.find(params[:id])
  end
  def edit
  end
  def update
  end
  def destroy
    klass = Klass.find(params[:id])
    klass.delete
    redirect_to klass.course.teacher
  end

  def roster
    klass = Klass.find(params[:klass_id])
    @roster = klass.students
    render :json => roster
  end


end