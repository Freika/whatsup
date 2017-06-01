class ReportsController < ApplicationController
  before_action :authenticate_user!

  def update
    report = current_user.reports.find(params[:id])

    report.teams.delete_all
    report.teams << Team.find(params[:report][:team_ids]) if params[:report]

    redirect_to tasks_path, notice: 'Report was successfully updated.'
  end
end
