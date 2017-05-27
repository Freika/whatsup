require 'rails_helper'

RSpec.feature 'User deletes a task' do
  fixtures :tasks

  scenario 'task exists' do
    tasks(:task)

    visit '/tasks'

    click_link 'Destroy'

    expect(page).to have_text 'Task was successfully destroyed.'
  end
end
