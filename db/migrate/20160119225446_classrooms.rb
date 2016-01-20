class Classrooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.belongs_to :students, index: true
      t.belongs_to :courses, index: true

      t.timestamps null: false
    end
  end
end
