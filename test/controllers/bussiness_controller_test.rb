require 'test_helper'

class BussinessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bussiness_index_url
    assert_response :success
  end

  test "should get create" do
    get bussiness_create_url
    assert_response :success
  end

end
