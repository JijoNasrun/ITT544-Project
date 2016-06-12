class Useridbooking < ActiveRecord::Migration
  def change
  	add_column :bookings, :user_id, :integer
  	remove_column :bookings, :length, :integer
  end
end
