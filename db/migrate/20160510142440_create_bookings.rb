class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.string :booking_id
    	t.string :book_id 
    	t.string :booking_date
    	t.string :booking_issue_date
    	t.string :booking_status
    	t.string :user_id
      t.timestamps null: false
    end
  end
end
