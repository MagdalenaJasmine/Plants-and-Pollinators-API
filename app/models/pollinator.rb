class Pollinator < ApplicationRecord
    has_many :plant_pollinators 
    has_many :plants, through: :plant_pollinators
end
