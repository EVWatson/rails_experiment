require 'test_helper'

class DvdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dvds_index_url
    assert_response :success
  end

  test "should get show" do
    get dvds_show_url
    assert_response :success
  end

end
