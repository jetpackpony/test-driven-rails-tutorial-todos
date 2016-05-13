require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in

    click_on 'Create New'
    fill_in 'Title', with: 'Buy milk'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'Buy milk'
  end
end
