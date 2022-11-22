require "test_helper"

class DesignControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get design_index_url
    assert_response :success
  end
end
