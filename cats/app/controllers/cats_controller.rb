class CatsController < ApplicationController

    def index
        @cats = Cat.all
    end

    def show
    end

    def new
        @cat = Cat.new
        @owner = @cat.build_shelter
    end

    def create
        binding.pry
        @cat = Cat.new(cat_params)
        if @cat.save
            redirect_to cats_path
        else
            render :new
        end
    end

    def edit
        @cat = Cat.find(params[:id])
    end

    def update
        @cat = Cat.find(params[:id])
        if @cat.update(cat_params)
            redirect_to cats_path
        else
            render :edit
        end
    end

    def destroy
        Cat.find(params[:id]).destroy
        redirect_to cats_path
    end

    private

    def cat_params # strong params
        params.require(:cat).permit(:name, :breed, :shelter_location, :shelter_id)
    end

end
