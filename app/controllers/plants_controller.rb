class PlantsController < ApplicationController
    def index
        plants = Plant.all 
        render json: plants, except: [:created_at, :updated_at], include: [:pollinators, :plant_pollinators]
        

    end
end
