class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end
    add_index :reports, :user_id
    add_index :reports, :team_id
  end
end
