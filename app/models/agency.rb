class Agency < ApplicationRecord
    has_many :orders
    has_many :users
    has_many :deliveries
    
    
    validates :Code , uniqueness: true

    validates :Name , uniqueness: {case_sensitive: false}
   

    has_secure_password
end
