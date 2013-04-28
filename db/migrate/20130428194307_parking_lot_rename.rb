class ParkingLotRename < ActiveRecord::Migration
  def up
    rename_table :parking_lot, :parking_lots
  end

  def down
  end
end
