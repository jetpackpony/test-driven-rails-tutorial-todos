require 'rails_helper'

feature 'User sees only own todos' do
  scenario 'does not see others\'s todos' do
    Todo.create!(title: 'Buy milk', email: 'someone_else@test.com')

    sign_in_as 'someone@test.com'

    expect(page).not_to have_css '.todos li', text: 'Buy milk'
  end
end

