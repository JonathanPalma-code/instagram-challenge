RSpec.feature 'Restricting URLs', type: :feature do
  scenario 'a user trying to access a url and being redirected to the homepage' do
    visit '/sessions/2'
    expect(page).to have_current_path root_path
  end
end