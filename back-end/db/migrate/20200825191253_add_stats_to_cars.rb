class AddStatsToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :total_games, :integer
    add_column :cars, :total_correct, :integer
  end
end
