class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.string :image
      t.text :description
      t.float :price
      t.boolean :available
      t.integer :fire_time
      t.references :menu, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
