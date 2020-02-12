class CreateShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :shelters do |t|
      t.string :location
      t.integer :owner_id

      t.timestamps
    end
  end
end
