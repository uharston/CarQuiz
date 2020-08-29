class AddLikesAndDislikesToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :likes, :integer, default: 0
    add_column :cars, :dislikes, :integer, default: 0
  end
end
