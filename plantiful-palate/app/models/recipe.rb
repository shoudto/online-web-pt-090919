class Recipe < ActiveRecord::Base
    belongs_to :user
    has_and_belongs_to_many :ingredients
    validates_presence_of :title, :method
    validates_uniqueness_of :title
end