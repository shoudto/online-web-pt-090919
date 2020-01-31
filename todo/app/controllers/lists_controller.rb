class ListsController < ApplicationController

    def new
        @list = List.new
        # Rails is implicitly rendering the views/lists/new.html.erb view
    end

end