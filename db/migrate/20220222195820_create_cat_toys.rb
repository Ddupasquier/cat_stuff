class CreateCatToys < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_toys do |t|
      t.string :toy_name
      t.belongs_to :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
