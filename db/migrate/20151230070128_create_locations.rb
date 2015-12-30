class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :display_name
      t.text :location_name
      t.text :description
      t.string :address
      t.string :zip
      t.string :image
      t.boolean :truck
      t.references :menu, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
