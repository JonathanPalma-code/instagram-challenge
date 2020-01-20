require 'rails_helper'
require_relative '../web_helpers'

RSpec.feature 'Log in', type: :feature do
  scenario 'User is not logged in' do
    visit root_path
    expect(page).not_to have_current_path 'sessions/null'
  end
end
