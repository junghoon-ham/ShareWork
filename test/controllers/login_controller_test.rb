require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get choose" do
    get login_choose_url
    assert_response :success
  end

end
