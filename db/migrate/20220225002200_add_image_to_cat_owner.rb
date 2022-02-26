class AddImageToCatOwner < ActiveRecord::Migration[7.0]
  def change
    add_column :cat_owners, :image, :string
  end
end
