class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :electric_car
end
