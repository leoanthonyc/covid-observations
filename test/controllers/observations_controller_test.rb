require "test_helper"

class ObservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get confirmed" do
    get observations_confirmed_url
    assert_response :success
  end
end
