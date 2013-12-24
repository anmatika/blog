class AddImagePathToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_name, :string
  end
end
