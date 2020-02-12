class Cat < ApplicationRecord
    belongs_to :shelter

    # Build custom attribute writer and reader to prevent shelter record duplication when creating new cat
    def shelter_location
        self.shelter.location
    end

    def shelter_location=(location)
        self.shelter = Shelter.find_or_create_by(location: location)
    end

end
