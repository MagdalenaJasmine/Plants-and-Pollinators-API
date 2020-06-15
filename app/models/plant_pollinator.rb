class PlantPollinator < ApplicationRecord
  belongs_to :plant
  belongs_to :pollinator
end
