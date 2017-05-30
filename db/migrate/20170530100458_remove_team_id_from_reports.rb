class RemoveTeamIdFromReports < ActiveRecord::Migration[5.1]
  def change
    remove_column :reports, :team_id, :integer
  end
end
