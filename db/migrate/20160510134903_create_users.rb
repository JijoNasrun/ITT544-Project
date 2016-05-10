class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	t.string :user_id
    	t.string :user_name
    	t.string :user_password
    	t.string :user_level
    	t.string :user_address
    	t.string :user_contact
      
      t.timestamps null: false
    end
  end
end
