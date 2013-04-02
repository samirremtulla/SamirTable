class ChangeTimeFormatInMyTable < ActiveRecord::Migration
  def up
    remove_column :reservations, :time
    add_column :reservations, :time, :string
  end

  def down
  end
end
