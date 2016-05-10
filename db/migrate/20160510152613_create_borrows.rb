class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
    	t.string :borrow_id
    	t.string :booking_id
    	t.string :borrow_due
    	t.string :borrow_return
    	t.string :borrow_status

      t.timestamps null: false
    end
  end
end
