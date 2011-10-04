class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.integer :display_order

      t.timestamps
    end
  end
end
