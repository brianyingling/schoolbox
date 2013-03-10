class TeachersController < ApplicationController
  def index
  end
  def new
    @teacher = Teacher.new
  end
  def create
    Teacher.create(params[:teacher])
    redirect_to root_path
  end
  def show
    # respond_to do |format|
    #   format.html
    # end
  end
  def edit
  end
  def update
  end
  def destroy
  end
end