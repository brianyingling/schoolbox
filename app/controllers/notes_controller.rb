class NotesController < ApplicationController
  def new
    @note = Note.new
  end
  def create
  end
end