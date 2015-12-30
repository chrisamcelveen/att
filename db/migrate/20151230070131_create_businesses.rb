class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.text :name
      t.string :phone_number
      t.string :address
      t.string :zip
      t.references :user, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
