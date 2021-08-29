class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
   # render plain: params[:note].inspect\
   @note = Note.new(note_params)
   @note.user = User.first
   if @note.save
    flash[:notice] = "Note was successfully created"
    redirect_to notes_path
   else
    render 'new'
   end 
  end

  private
    def note_params
     params.require(:note).permit(:user_id, :title, :date, :instructor, :description)
    end

end
