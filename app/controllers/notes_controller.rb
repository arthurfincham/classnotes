class NotesController < ApplicationController

  def index
    @notes = Note.all
    @user_notes = current_user.notes.all
  end

  def new
    @note = Note.new
  end

  def create
   # render plain: params[:note].inspect\
   @note = Note.new(note_params)
   @note.user = current_user
   if @note.save
    flash[:notice] = "Note was successfully created"
    redirect_to notes_path
   else
    render 'new'
   end 
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
     flash[:notice] = "Note was updated"
     redirect_to note_path(@note)
    else
     flash[:notice] = "Note was not updated"
     render 'edit'
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  private
    def note_params
     params.require(:note).permit(:user_id, :title, :date, :instructor, :description)
    end

end
