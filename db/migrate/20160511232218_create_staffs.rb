class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
    	t.string :staff_id
    	t.string :user_id
    	t.string :staff_position
    	t.string :staff_email

      t.timestamps null: false
    end
  end
end
