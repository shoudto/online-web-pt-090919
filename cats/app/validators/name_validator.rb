class NameValidator < ActiveModel::Validator

    def validate(record)
        if record.name && record.name.starts_with?("s")
            record.errors[:name] << "cannot start with an s!"
        end
    end
    
end