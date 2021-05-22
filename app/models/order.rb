class Order < ApplicationRecord
    belongs_to :agency
    belongs_to :user
    belongs_to :delivery
end
