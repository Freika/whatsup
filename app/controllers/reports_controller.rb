class ReportsController < ApplicationController
  def update
    report = Report.find(params[:id])

    report.teams.delete_all
    if params[:report]
      report.teams << Team.find(params[:report][:team_ids])
    end

    redirect_to tasks_path, notice: 'Report was successfully updated.'
  end
end
