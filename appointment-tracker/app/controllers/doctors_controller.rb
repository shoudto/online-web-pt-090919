class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def create
        raise params.inspect
        @doctor = Doctor.create(params[:doctor])
        redirect_to doctors_path
        binding.pry
    end

end