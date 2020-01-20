require_relative '../web_helpers'

RSpec.feature 'Log out', type: :feature do
  scenario 'user can log out his session' do
    sign_up
    click_on 'Logout'
    expect(page).to have_content 'Sign Up'
  end 
end
