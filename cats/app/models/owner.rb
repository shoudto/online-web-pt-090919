class Owner < ApplicationRecord
    has_many :cats, through: :shelters
    has_many :shelters
end
