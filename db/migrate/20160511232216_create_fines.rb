class CreateFines < ActiveRecord::Migration
  def change
    create_table :fines do |t|
    	t.string :fines_id
    	t.string :borrow_id
    	t.string :fines_amount
    	t.string :fines_status
    	t.string :fines_date_pay

      t.timestamps null: false
    end
  end
end
