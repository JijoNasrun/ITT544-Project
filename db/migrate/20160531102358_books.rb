class Books < ActiveRecord::Migration
  def change
  	add_column :books, :author, :string
  	add_column :books, :publisher, :string
  	add_column :books, :isbn, :string

  end
end
