class AddStatsToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :total_games, :integer, default: 0
    add_column :cars, :total_correct, :integer, default: 0
  end
end
