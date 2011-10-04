class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.integer :grade_id

      t.timestamps
    end
  end
end
