class Students < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :register_number
      t.integer :status

      t.timestamps null: false
    end
  end
end
