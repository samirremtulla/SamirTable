class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :date
      t.integer :time
      t.integer :people
      t.references :user
      t.references :restaurant

      t.timestamps
    end
    add_index :reservations, :user_id
    add_index :reservations, :restaurant_id
  end
end
