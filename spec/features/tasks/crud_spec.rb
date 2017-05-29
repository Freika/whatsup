feature 'Task' do
  let!(:user) { create(:user) }
  let!(:task) { create(:task, user: user) }

  before(:each) { sign_in user }

  scenario 'creating' do
    visit tasks_path

    within '#add_todo' do
      fill_in 'Content', with: 'Task description'
      fill_in 'Estimated hours', with: 3
      fill_in 'Spent hours', with: 2

      choose 'todo'

      click_on 'Save'
    end

    expect(page).to have_content 'Task was successfully created.'
  end

  scenario 'deletion' do
    sign_in user

    visit tasks_path

    click_on 'Destroy'

    expect(page).to have_text 'Task was successfully destroyed.'
  end

  scenario 'updating', js: true do
    visit tasks_path

    click_on 'Edit'

    fill_in 'Content', with: 'Updated text'

    click_button 'Save'

    expect(page).to have_text 'Task was successfully updated.'
    expect(page).to have_text 'Updated text'
  end
end
