class NotesController < ApplicationController
  def new
    @note = Note.new
  end
  def create
    note = Note.create(params[:note])
    @auth.notes << note
    @note = Note.new
  end
  def destroy
    note = Note.find(params[:id])
    note.delete
    @note = Note.new
  end
end