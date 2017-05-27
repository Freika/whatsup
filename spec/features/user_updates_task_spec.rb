require 'rails_helper'

RSpec.feature 'User updates a task' do
  fixtures :tasks

  scenario 'task exists' do
    tasks(:task)

    visit '/tasks'

    click_link 'Edit'

    click_button 'Update Task'

    expect(page).to have_text 'Task was successfully updated.'
  end
end
