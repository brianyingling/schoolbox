class AssignmentsController < ApplicationController
  def index
    @klasses = @auth.klasses
  end
  def new
    @assignment = Assignment.new
  end

  def create
    assignment = Assignment.create(params[:assignment])
    redirect_to assignments_path
  end
  def show
    @assignment = Assignment.find(params[:id])
  end

  def destroy
    assignment = Assignment.find(params[:id])
    assignment.delete
    redirect_to assignments_path
  end

  def edit
    @assignment = Assignment.find(params[:id])
    render :new
  end
  def update
    assignment = Assignment.find(params[:id])
    assignment.update_attributes(params[:assignment])
    assignment.save
    redirect_to assignments_path
  end

end