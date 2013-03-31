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

end