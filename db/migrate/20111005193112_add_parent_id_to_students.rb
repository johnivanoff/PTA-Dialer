class AddParentIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :parent_id, :integer
  end
end
