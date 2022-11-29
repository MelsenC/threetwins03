require "rails_helper"

RSpec.feature "User submits a customer" do
  scenario "they see the page for the submitted customer" do
    customer_code = "ZZ"
    customer_name = "Sleepers R Us"
    visit customers_path
    click_on "New Customer"
    fill_in "Code", with: customer_code
    fill_in "Name", with: customer_name
    click_on "Create Customer"
    expect(page).to have_text("ZZ - Sleepers R Us")
  end
end