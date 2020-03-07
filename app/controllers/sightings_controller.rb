class SightingsController < ApplicationController

    def index
        sightings = Sighting.all
        render json: sightings, include: %i[bird location]
    end

    def show
        sighting = Sighting.find_by(id: params[:id])
        #render json: {id: sighting.id, bird: sighting.bird, location: sighting.location}
        if sighting
            render json: sighting, include: %i[bird location], except: %i[created_at updated_at]
        else
            render json: {message: 'No sighting found with that id'}
        end
    end
end
