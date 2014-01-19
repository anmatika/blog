class AddImageNameThumbToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_name_thumb, :string
  end
end
