class PlantPollinatorsController < ApplicationController
    def index
        plant_pollinators = PlantPollinator.all 
        render json: plant_pollinators, include: [:plant, :pollinator]
    end

    def show 
        plant_pollinator = PlantPollinator.find_by(id: params[:id])
        render json: plant_pollinator, include: [:plant, :pollinator]
    end
end
