class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.text :name
      t.string :image
      t.references :order, index: true

      t.timestamps
    end
  end
end
