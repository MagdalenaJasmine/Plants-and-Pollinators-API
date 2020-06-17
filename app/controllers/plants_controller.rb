class PlantsController < ApplicationController
    def index
        plants = Plant.all 
        render json: plants, except: [:created_at, :updated_at], include: [:pollinators, :plant_pollinators]
        

    end



    def create 
        
        plant = Plant.create!(plant_params)
        if plant.valid?
            params[:plant][:pollinator_ids].map do |pol|
                PlantPollinator.create(pollinator_id: pol, plant_id: plant.id ) 
            end
            render json: plant
        else 
            render json: plant.errors.full_messages 
        end
    end

    private
    def plant_params
        params.require(:plant).permit(:common_name, :latin_name, :description, :zone, :image, pollinator_ids:[])
    end
end
