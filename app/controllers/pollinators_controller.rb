class PollinatorsController < ApplicationController
    def index
        pollinators = Pollinator.all 
        render json: pollinators, except: [:created_at, :updated_at], include: [:plants, :plant_pollinators]
        
    end
    def show
        pollinator = Pollinator.find_by(id: params[:id])
        render json: pollinator
    end
    def update
        pollinator = Pollinator.find(params[:id])
        pollinator.update!(pollinator_params)
        if pollinator.valid?
            render json: pollinator
        else   
            render json: pollinator.errors.full_messages
        end
    end

    private
    def pollinator_params
        params.require(:pollinator).permit(:name, :species, :description, :image)
        
    end
end


