def sign_up
  visit '/'
  click_on "Sign Up"
  fill_in "username", with: "Jonathan Palma"
  fill_in "email", with: "jonathan@gmail.com"
  fill_in "password", with: "password"
  fill_in "password_confirmation", with: "password"

  click_on "Submit"
end
