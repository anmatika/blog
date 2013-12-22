class CreateProducts < ActiveRecord::Migration

  def change
    create_table :products do |t|
      t.decimal :price
      t.integer :in_stock_count
      t.string :description

      t.timestamps
    end
  end
end
