class ReportsController < ApplicationController
  before_action :authenticate_user!

  def update
    report = current_user.reports.find(params[:id])

    report.teams.delete_all
    if params[:report]
      report.teams << Team.find(params[:report][:team_ids])
    end

    redirect_to tasks_path, notice: 'Report was successfully updated.'
  end
end
