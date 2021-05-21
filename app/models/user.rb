class User < ApplicationRecord
    belongs_to :gas_agency
    has_many :orders
end
