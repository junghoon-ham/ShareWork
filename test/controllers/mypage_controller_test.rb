require 'test_helper'

class MypageControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get mypage_main_url
    assert_response :success
  end

end
