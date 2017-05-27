require 'rails_helper'

RSpec.feature 'User views a task' do
  fixtures :tasks

  scenario 'task exists' do
    task = tasks(:task)

    visit '/tasks'

    click_link 'Show'

  end
end
