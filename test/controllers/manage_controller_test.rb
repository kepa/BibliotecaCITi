require 'test_helper'

class ManageControllerTest < ActionController::TestCase
  test "should get tardies" do
    get :tardies
    assert_response :success
  end

end
