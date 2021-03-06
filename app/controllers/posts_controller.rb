class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post.user_id = current_user.id
        if @post.save!
           
            redirect_to post_path(@post)
        else 
          flash[:errors] = @post.errors.full_messages
          render :new
        end 
    end

    private
    
    def post_params
        params.require(:post).permit(:title, :body, :user_id, :topic_id)
    end
end
