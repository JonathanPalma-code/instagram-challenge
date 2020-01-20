describe 'Welcome Page', type: :view do
  scenario 'A user can see the welcome page and its content' do
    visit '/'
    expect(page).to have_content 'Welcome to Instagram'
    expect(page).to have_content 'Login'
    expect(page).to have_content 'Sign Up'
    expect(page).to have_current_path '/'
  end
end
