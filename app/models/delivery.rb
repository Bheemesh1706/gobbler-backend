class Delivery < ApplicationRecord
    belongs_to :agency
    has_many :orders
end
