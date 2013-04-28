class CreateParkingTypes < ActiveRecord::Migration
  def change
    create_table :parking_types do |t|
      t.string :name
      t.string :color
      t.string :background
      t.integer :position

      t.timestamps
    end
  end
end
