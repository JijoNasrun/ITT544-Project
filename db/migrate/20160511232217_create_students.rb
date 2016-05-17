class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :id_student
    	t.string :user_id
      t.timestamps null: false
    end
  end
end
