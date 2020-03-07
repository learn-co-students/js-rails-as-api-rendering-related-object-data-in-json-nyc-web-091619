class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds.to_json, only: [:id, :name, :species]
  end
end
#end