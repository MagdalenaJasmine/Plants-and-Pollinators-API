class Plant < ApplicationRecord
    has_many :plant_pollinators 
    has_many :pollinators, through: :plant_pollinators
end
