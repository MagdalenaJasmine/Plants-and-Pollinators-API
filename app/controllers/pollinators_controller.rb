class PollinatorsController < ApplicationController
    def index
        pollinators = Pollinator.all 
        render json: pollinators, except: [:created_at, :updated_at], include: [:plants, :plant_pollinators]
        
    end
end
