require "rails_helper"

RSpec.feature "User visits a static page" do
  scenario "when the user is on the home page, the nav link is active" do
    visit root_path
    find('#navbarSupportedContent').click_link('Home')
    expect(find('#nav_home')).to have_class('active')
  end
  scenario "when the user is on the services page, the nav link is active" do
    visit root_path
    find('#navbarSupportedContent').click_link('Services')
    expect(find('#nav_services')).to have_class('active')
  end
  scenario "when the user is on the gallery page, the nav link is active" do
    visit root_path
    find('#navbarSupportedContent').click_link('Gallery')
    expect(find('#nav_gallery')).to have_class('active')
  end
  scenario "when the user is on the PSST page, the nav link is active" do
    visit root_path
    find('#navbarSupportedContent').click_link('SanMar PSST Program')
    expect(find('#nav_psst')).to have_class('active')
  end
  scenario "when the user is on the Manage Orders page, the nav link is active" do
    visit root_path
    find('#navbarSupportedContent').click_link('Manage Orders')
    expect(find('#nav_manage_orders')).to have_class('active')
  end
end