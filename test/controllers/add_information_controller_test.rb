require 'test_helper'

class AddInformationControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get add_information_update_url
    assert_response :success
  end

end
