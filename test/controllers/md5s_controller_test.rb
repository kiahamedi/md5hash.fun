require 'test_helper'

class Md5sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get md5s_index_url
    assert_response :success
  end

  test "should get show" do
    get md5s_show_url
    assert_response :success
  end

  test "should get new" do
    get md5s_new_url
    assert_response :success
  end

end
