class CommentsController < ApplicationController
    def new
        @comment = Comment.new
        @post_id = params[:id].to_i
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
          redirect_to post_path(comment_params[:post_id])
        else
          render :new
        end
    end

    def delete
        @comment = Comment.destroy
        redirect_to post_path
    end

    private

    def comment_params
        params.require(:comment).permit(:body, :post_id)
    end
end
