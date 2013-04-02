class SwitchingToDateTimes < ActiveRecord::Migration
  def up
    remove_column :reservations, :date
    add_column :reservations, :date, :datetime
  end

  def down
  end
end
