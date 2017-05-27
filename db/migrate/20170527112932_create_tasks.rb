class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :user_id
      t.integer :status
      t.integer :estimated_hours
      t.integer :spent_hours

      t.timestamps
    end
    add_index :tasks, :user_id
    add_index :tasks, :status
    add_index :tasks, :estimated_hours
    add_index :tasks, :spent_hours
  end
end
