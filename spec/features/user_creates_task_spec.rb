feature 'Tasks' do
  let(:user) { create(:user) }

  scenario 'creating' do
    sign_in user

    visit new_task_path

    fill_in 'Content', with: 'Task description'
    fill_in 'Estimated hours', with: 3
    fill_in 'Spent hours', with: 2

    choose 'todo'

    click_on 'Save'

    expect(page).to have_content 'Task was successfully created.'
  end
end
