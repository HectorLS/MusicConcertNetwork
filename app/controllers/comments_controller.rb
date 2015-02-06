class CommentsController < ApplicationController


	def new
		@concert = Concert.find params[:concert_id]
		@comment = @concert.comments.new
	end

	def create
		@concert = Concert.find params[:concert_id]
		@comment = @concert.comments.new comment_params
		if @comment.save
			redirect_to redirect_to concert_path(@concert.id)
		else
			render 'new'
		end
	end

	def destroy
	end

	private
	def comment_params
		params.require(:comment).permit(:username, :comment)
	end


end
