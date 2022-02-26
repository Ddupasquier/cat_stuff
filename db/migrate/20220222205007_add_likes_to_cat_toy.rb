class AddLikesToCatToy < ActiveRecord::Migration[7.0]
  def change
    add_column :cat_toys, :likes, :integer, default: 0
  end
end
