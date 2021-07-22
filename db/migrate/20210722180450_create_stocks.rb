class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :symbol
      t.integer :quantity
      t.integer :buy_price

      t.timestamps
    end
  end
end
