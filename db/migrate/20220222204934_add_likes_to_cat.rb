class AddLikesToCat < ActiveRecord::Migration[7.0]
  def change
    add_column :cats, :likes, :integer, default: 0
  end
end
