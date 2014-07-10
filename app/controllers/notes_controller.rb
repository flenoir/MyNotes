class NotesController < ApplicationController

	# http://localhost:3000/
	



	def show
		@note = Note.find(params[:id]) #on recherche la note qui correspond a la requette passée en requete http
	end

	def index
		@notes = Note.all
		@count = Note.count
	end

	def destroy
		@destroy = Note.find(params[:id]).destroy
		redirect_to notes_path
	end

	 def search
	 	@message = params[:message]
	 	@notes = Note.where(:user => @message)
	 	render :index
	 end

     def new
     	@note = Note.new
     end

     def create
     	Note.create(note_params)
     	# ce qui équivanut a :
     	# @note = Note.new
     	# @note.user = params[:note][:user]
     	# @note.content = params[:note][:content]
     	# @note.save
     	redirect_to notes_path
     end

 	def edit
 		@note = Note.find(params[:id])
 		render :new
 	end

 	def update
 		@note = Note.find(params[:id])
 		@note.update(note_params)
 		redirect_to notes_path
 	end

 	private
     def note_params
		params.require(:note).permit(:user,:content)
	end
end
