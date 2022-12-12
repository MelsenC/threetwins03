require "rails_helper"

RSpec.feature "User submits a customer" do

  scenario "they visit the Customers page successfully" do
    sign_in
    visit customers_path
    expect(page).to have_css "h1", text: "Customers"
  end

  scenario "they submit a new customer successfully" do
    sign_in
    visit customers_path
    customer_code = "ZZ"
    customer_name = "Sleepers R Us"
    click_on "New Customer"
    fill_in "Code", with: customer_code
    fill_in "Name", with: customer_name
    click_on "Create Customer"
    expect(page).to have_css "h1", text: "ZZ - Sleepers R Us"
  end
end