class HomeController < ApplicationController
  def index
    #redirect_to(@auth, :remote=>true) if @auth.present?
    redirect_to dashboard_path if @auth.present?
  end


  def dashboard
    @assignments = @auth.klasses.map(&:assignments).sort_by{|duedate| duedate}.reverse.flatten
    @assignments_by_date = @assignments.flatten.group_by(&:duedate)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @post = Post.new
    @comment = Comment.new
    @note = Note.new
    @notes = @auth.notes if @auth.is_a?(Teacher)
    @grades = @auth.grades.order(:created_at) if @auth.is_a?(Student)
  end

end