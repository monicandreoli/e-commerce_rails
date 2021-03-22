class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :pick_up_date
      t.time :pick_up_time
      t.string :pick_up_shop
      t.integer :total_price

      t.timestamps
    end
  end
end
