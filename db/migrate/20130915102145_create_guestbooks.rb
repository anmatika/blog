class CreateGuestbooks < ActiveRecord::Migration
  def change
    create_table :guestbooks do |t|
      t.string :message
      t.string :name

      t.timestamps
    end
  end
end
