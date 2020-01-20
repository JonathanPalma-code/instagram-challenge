require 'rails_helper'
require_relative '../web_helpers'

RSpec.describe "sessions/new.html.erb", type: :view do
  scenario "a user can sign up" do 
    sign_up
    click_on 'Logout'
    click_on 'Login'
    fill_in "email", with: 'jonathan@gmail.com'
    fill_in "password", with: 'password'
    click_on 'Login'
    expect(page).to have_content("Welcome to Instagram Jonathan Palma!")
  end
end