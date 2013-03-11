class HomeController < ApplicationController
  def index
    #redirect_to(@auth, :remote=>true) if @auth.present?
    if @auth.present?
      redirect_to @auth
    end
  end
end