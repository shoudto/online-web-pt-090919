class BooksController < ApplicationController
  # Index
  get '/books' do
    @books = Book.all
    erb :'books/index'
  end


  # New
  get '/books/new' do
    erb :'books/new'
  end

  # Show


  # Create
  post '/books' do
    Book.create(params)
    redirect '/books'
  end

end