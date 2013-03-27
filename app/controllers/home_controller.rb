class HomeController < ApplicationController
  def index
    #redirect_to(@auth, :remote=>true) if @auth.present?
    redirect_to @auth if @auth.present?
  end


  def dashboard
    # @student = @auth if @auth.is_a?(Student)
  end

end