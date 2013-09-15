class CreateGuestbookmessages < ActiveRecord::Migration
def self.up
 create_table :guestbookmessages do |t|
      t.string :message
      t.string :name

      t.timestamps
    end
  end
end
