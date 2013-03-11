class HomeController < ApplicationController
  def index
    #redirect_to(@auth, :remote=>true) if @auth.present?
    redirect_to @auth if @auth.present?
  end
end