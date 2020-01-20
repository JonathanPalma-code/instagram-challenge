require 'rails_helper'

RSpec.feature "users/new.html.erb", type: :feature do
  scenario "a user can sign up" do 
    visit '/'
    click_on "Sign Up"
    fill_in "username", with: "Jonathan Palma"
    fill_in "email", with: "jonathan@gmail.com"
    fill_in "password", with: "password"
    fill_in "password_confirmation", with: "password"

    click_on "Submit"

    expect(page).to have_content("Welcome to Instagram Jonathan Palma!")
  end
end
