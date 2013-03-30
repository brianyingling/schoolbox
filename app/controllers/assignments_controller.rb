class AssignmentsController < ApplicationController
  def index
    @klasses = @auth.klasses
  end
end