class CatsController < ApplicationController

    get '/cats' do
        @cats = Cat.all
        erb :cats
    end

end