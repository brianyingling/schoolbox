class AssignmentsController < ApplicationController
  def index
    @klasses = @auth.klasses
  end
  def new
    @assignment = Assignment.new
  end
end