class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|

    	t.String :staff_id
    	t.String :user_id
    	t.String :staff_position
    	t.String :staff_email

      t.timestamps null: false
    end
  end
end
