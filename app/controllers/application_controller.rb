class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  private
  def authenticate
    if session[:teacher_id].present?
      @auth = Teacher.find(session[:teacher_id])
    elsif session[:student_id].present?
      @auth = Student.find(session[:student_id])
    end
  end

  def check_if_logged_in
    redirect_to root_path if @auth.nil?
  end

  def check_if_teacher
    redirect_to root_path if @auth.nil? || @auth.is_a?(Teacher)
  end
end
