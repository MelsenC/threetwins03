require "rails_helper"

RSpec.feature "User sees active class on nav links" do
  scenario "when the user is on the home page, the nav link is active" do
    visit home_path
    find('#navbarSupportedContent').click_link('Home')
    expect(page).to have_css("a#nav_home", :class => "nav-link active")
  end
  scenario "when the user is on the services page, the nav link is active" do
    visit services_path
    find('#navbarSupportedContent').click_link('Services')
    expect(page).to have_css("a#nav_services", :class => "nav-link active")
  end
  scenario "when the user is on the gallery page, the nav link is active" do
    visit gallery_path
    find('#navbarSupportedContent').click_link('Gallery')
    expect(page).to have_css("a#nav_gallery", :class => "nav-link active")
  end
  scenario "when the user is on the PSST page, the nav link is active" do
    visit psst_path
    find('#navbarSupportedContent').click_link('SanMar PSST Program')
    expect(page).to have_css("a#nav_psst", :class => "nav-link active")
  end
  scenario "when the user is on the Manage Orders page, the nav link is active" do
    sign_in
    visit manage_orders_path
    find('#navbarSupportedContent').click_link('Manage Orders')
    expect(page).to have_css("a#nav_manage_orders", :class => "nav-link active")
  end
end