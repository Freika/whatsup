class CreateTeamReports < ActiveRecord::Migration[5.1]
  def change
    create_table :team_reports do |t|
      t.integer :team_id
      t.integer :report_id

      t.timestamps
    end
    add_index :team_reports, :team_id
    add_index :team_reports, :report_id
  end
end
