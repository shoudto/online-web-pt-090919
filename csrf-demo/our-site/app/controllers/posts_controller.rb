class PostsController < ApplicationController

    def index
        @posts = Post.all
    end

    def destroy
        Post.find_by(params[:id]).destroy
        redirect_to posts_path
    end

end