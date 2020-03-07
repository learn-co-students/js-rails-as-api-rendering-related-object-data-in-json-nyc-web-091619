class SightingsController < ApplicationController

    def show 
        if sighting 
            sighting = Sighting.find(params[:id])
            render json: sighting, include: [:bird, :location]
        else 
            render json: {message: 'No sighting found with that id'}

    end 

end
