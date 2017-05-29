class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_paper_trail_whodunnit
  around_action :set_time_zone, if: :current_user

  private

  def set_time_zone(&block)
    Time.use_zone(current_user.timezone, &block)
  end
end
