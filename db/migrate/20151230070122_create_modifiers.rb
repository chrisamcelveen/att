class CreateModifiers < ActiveRecord::Migration
  def change
    create_table :modifiers do |t|
      t.text :name
      t.string :image
      t.text :description
      t.float :price
      t.references :item, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
