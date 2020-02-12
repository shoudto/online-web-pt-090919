class SheltersController < ApplicationController

    def new
        @shelter = Shelter.new
        @shelter.cats.build
        @shelter.cats.build
    end

    def create
        @shelter = Shelter.new(shelter_params)
        binding.pry
        if @shelter.save
            redirect_to cats_path
        else
            render :new
        end
    end

    def shelter_params
        params.require(:shelter).permit(:location, :cats_attributes)
    end

end
