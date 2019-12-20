class AuthorsController < ApplicationController
  # Index
  get '/authors' do
    @authors = Author.all

    erb :'authors/index'
  end

  # New
  get '/authors/new' do
    @author = Author.new

    erb :'authors/new'
  end

  # Show
  get '/authors/:id' do
    @author = Author.includes(:books).find(params[:id])

    erb :'authors/show'
  end

  # Create
  post '/authors/:id' do
    @author = Author.new params

    if @author.save
      redirect "/authors/#{@author.id}"
    else
      erb :'authors/new'
    end
  end

  # Edit
    get '/authors/:id/edit' do
      @author = Author.find(params[:id])

      erb :'authors/edit'
    end


  # Update
    patch '/authors/:id' do
      author = Author.find_by(params[:id])
      author.update(params["author"])
      redirect '/authors'
    end

  # Delete
  delete '/authors/:id' do
    Author.destroy(params[:id])

    redirect '/authors'
  end
end
