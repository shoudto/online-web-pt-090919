class SessionsController < ApplicationController

    def new
        @user = User.new
        render :login
    end

    def create
        if user = User.find_by(user_params)
            session[:id] = user.id
            redirect_to posts_path
        else
            render :login
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end