module Features
  def sign_in
    user = create(:user)
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
  end

  def sign_in_no_user
    visit new_user_session_path
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "testing123"
    click_on "Log in"
  end

  def sign_in_wrong_password
    user = create(:user, email: "test@test.com", password: "testing123")
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "wrong"
    click_on "Log in"
  end
end