class Agency < ApplicationRecord
    has_many :orders
    has_many :users
    has_many :deliveries
    
    

    has_secure_password
end
