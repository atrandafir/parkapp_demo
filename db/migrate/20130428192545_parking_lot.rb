class ParkingLot < ActiveRecord::Migration
  def change
    create_table :parking_lot do |t|
      t.integer :user_id
      t.integer :parking_type_id
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
    add_column :parking_lot, :latitude, :decimal, {:precision=>10, :scale=>6}
    add_column :parking_lot, :longitude, :decimal, {:precision=>10, :scale=>6}
  end
end
