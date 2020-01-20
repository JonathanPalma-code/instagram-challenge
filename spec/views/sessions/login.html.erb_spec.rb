require 'rails_helper'
require_relative '../web_helpers'

describe 'Log in', type: :view do
  scenario 'User is not logged in' do
    visit root_path
    expect(page).not_to have_current_path 'sessions/null'
  end
end