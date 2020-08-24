class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.string :modelname 
      t.integer :model_id 
      t.integer :make_id

      t.timestamps
    end
  end
end

