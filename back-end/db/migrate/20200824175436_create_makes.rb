class CreateMakes < ActiveRecord::Migration[6.0]
  def change
    create_table :makes do |t|
      t.integer :make_id 
      t.string :make_name
      t.integer :vehicle_type_id
      t.string :vehicle_type_name

      t.timestamps
    end
  end
end
