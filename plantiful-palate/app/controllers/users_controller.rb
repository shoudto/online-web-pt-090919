class UsersController < ApplicationController

    # users can sign up
    get '/signup' do
        erb :'users/signup'
    end

    post '/signup' do
        # users should not be able to create an account with any blank credentials
        # users should not be able to create an account with a username that already exists
        user = User.new(params)
        if user.save
            session[:user_id] = user.id
            redirect '/recipes'
        else
            @error = "Invalid credentials"
            erb :'/users/signup'
        end
    end

    # Actions that let users view their recipes and ingredients

    get '/cookbook' do
        @recipes = current_user.recipes.reverse
        erb :'/users/cookbook'
    end

    get '/pantry' do
        @ingredients = current_user.ingredients
        erb :'/users/pantry'
    end

end