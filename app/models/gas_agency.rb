class GasAgency < ApplicationRecord
    has_many :orders
    has_many :users
    has_many :deliverys
end
