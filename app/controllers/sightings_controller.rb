class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    if sighting
      render json: sighting, include: %i[bird location], except: %i[updated_at created_at]
    else
      render json: { message: 'No sighting found with that id' }
    end
  end
end
