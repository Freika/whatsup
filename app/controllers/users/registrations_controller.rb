class Users::RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(
      :username, :email, :password, :password_confirmation, team_ids: []
    )
  end

  def account_update_params
    params.require(:user).permit(
      :username, :email, :password, :password_confirmation, :current_password,
      :timezone, team_ids: []
    )
  end
end
