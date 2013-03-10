class KlassesController < ApplicationController
  def index
  end
  def new
  end
  def create
  end
  def show
    @klass = Klass.find(params[:id])
  end
  def edit
  end
  def update
  end
  def destroy
  end

  def roster
    klass = Klass.find(params[:klass_id])
    @roster = klass.students
    render :json => roster
  end


end