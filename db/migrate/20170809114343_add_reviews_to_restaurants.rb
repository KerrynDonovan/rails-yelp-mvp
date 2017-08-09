class AddReviewsToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :content, :text
    add_column :restaurants, :rating, :integer
  end
end
