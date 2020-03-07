class SightingsController < ApplicationController
    def show
        sighting = Sighting.find(params[:id])
        # render json: sighting.slice(:id, :bird, :location)
        # render json: sighting, include: [:bird, :location], except: [:created_at, :updated_at]
        render json: sighting.to_json(:include => {
            :bird => {:only => [:name, :species]},
            :location => {:only => [:latitude, :longitude]}
        }), :except => [:updated_at]
    end
end
