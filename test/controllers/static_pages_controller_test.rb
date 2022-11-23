require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get services" do
    get static_pages_services_url
    assert_response :success
  end

  test "should get gallery" do
    get static_pages_gallery_url
    assert_response :success
  end

  test "should get psst" do
    get static_pages_psst_url
    assert_response :success
  end

  test "should get manage_orders" do
    get static_pages_manage_orders_url
    assert_response :success
  end
end
