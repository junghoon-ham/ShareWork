require 'test_helper'

class ActiveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get active_index_url
    assert_response :success
  end

end
