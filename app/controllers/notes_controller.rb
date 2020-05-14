class NotesController < ApplicationController
    def index
        notes = Note.all 
        render json: notes
    end

    def create
        note = Note.create({title: params["title"], content: params["content"], user_id: params["user_id"]})
        NoteTag.create({note: note, tag: Tag.find_or_create_by(name: params["note_tag"])})
        render json: note
    end

    def show
        note = Note.find(params[:id])
        render json: note
    end

    def update
        note = Note.find(params[:id])
        note.update(title: params[:title], content: params[:content])
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: note
    end
    
    private

    def note_params
        params.require(:note).permit(:title, :content, :user_id)
    end

end