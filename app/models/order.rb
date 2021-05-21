class Order < ApplicationRecord
    belongs_to :gas_agency
    belongs_to :user
    belongs_to :delivery
end
