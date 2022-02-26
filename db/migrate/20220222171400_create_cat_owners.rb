class CreateCatOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_owners do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
