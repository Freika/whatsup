require 'rails_helper'

RSpec.feature 'User views tasks' do
  fixtures :tasks

  scenario 'tasks are present' do
    task = tasks(:task)

    visit '/tasks'

  end
end
