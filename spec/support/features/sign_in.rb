module Features
  def sign_in
    visit root_path
    fill_in 'Email', with: 'testme@test.com'
    click_on 'Sign in'
  end
end