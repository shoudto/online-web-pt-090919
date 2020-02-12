class Shelter < ApplicationRecord
    has_many :cats
    belongs_to :owner
end
