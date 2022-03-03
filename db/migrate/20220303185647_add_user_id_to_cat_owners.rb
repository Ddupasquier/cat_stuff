class AddUserIdToCatOwners < ActiveRecord::Migration[7.0]
  def change
    add_column :cat_owners, :user_id, :integer
  end
end
