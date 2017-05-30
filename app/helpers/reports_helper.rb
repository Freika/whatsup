module ReportsHelper
  def team_included?(report, team)
    report.teams.include?(team)
  end
end
