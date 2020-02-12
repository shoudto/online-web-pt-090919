class AddShelterIdToCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :shelter_id, :integer
  end
end
