class AddReportIdToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :report_id, :integer
    add_index :tasks, :report_id
  end
end
