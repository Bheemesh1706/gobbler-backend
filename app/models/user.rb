class User < ApplicationRecord
    belongs_to :agency
    has_many :orders
end
