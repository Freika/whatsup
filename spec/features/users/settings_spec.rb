feature 'User updates settings' do
  let(:user) { create :user }

  scenario 'timezone' do
    timezone = ActiveSupport::TimeZone.all.sample
    sign_in user

    visit edit_user_registration_path

    select timezone.to_s, from: 'Timezone'
    fill_in 'Current password', with: user.password

    click_on 'Update'

    expect(page).to have_content 'Your account has been updated successfully.'
    expect(user.reload.timezone).to eq(timezone.name)
  end
end
