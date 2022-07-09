require "test_helper"

class TelemedicineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get telemedicine_index_url
    assert_response :success
  end
end
