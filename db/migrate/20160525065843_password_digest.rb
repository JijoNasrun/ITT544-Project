class PasswordDigest < ActiveRecord::Migration
  def change
  	remove_column :users, :user_password
  	add_column :users, :password_digest, :string
  end
end
