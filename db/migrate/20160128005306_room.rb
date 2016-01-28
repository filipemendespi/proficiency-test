class Room < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.references :student
      t.references :course

      t.timestamps
    end

    add_index :rooms, :student_id
    add_index :rooms, :course_id
  end
end
