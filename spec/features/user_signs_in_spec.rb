require "rails_helper"

RSpec.feature "they sign in" do
  scenario "successfully" do
    sign_in
    expect(page).to have_link "Log Out"
  end

  scenario "unsuccessfully with wrong password" do
    sign_in_wrong_password
    expect(page).to have_link "Log In"
  end

  scenario "unsuccessfully with wrong email" do
    sign_in_no_user
    expect(page).to have_link "Log In"
  end
end