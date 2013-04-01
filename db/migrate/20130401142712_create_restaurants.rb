class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :website
      t.integer :rating
      t.text :cuisine
      t.text :city
      t.integer :capacity

      t.timestamps
    end
  end
end
