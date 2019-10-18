require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get room_data" do
    get site_room_data_url
    assert_response :success
  end

end
