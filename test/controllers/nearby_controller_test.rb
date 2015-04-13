require 'test_helper'

class NearbyControllerTest < ActionController::TestCase
  test "should get hotel" do
    get :hotel
    assert_response :success
  end

end
