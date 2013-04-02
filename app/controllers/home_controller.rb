class HomeController < ApplicationController
  def index
    #redirect_to(@auth, :remote=>true) if @auth.present?
    redirect_to @auth if @auth.present?
  end


  def dashboard
    # @assignments = Assignment.all
    @assignments = @auth.klasses.map(&:assignments).sort_by{|duedate| duedate}.reverse
    @assignments_by_date = @assignments.flatten.group_by(&:duedate)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today

  end

end