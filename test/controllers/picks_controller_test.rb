require 'test_helper'

class PicksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get picks_create_url
    assert_response :success
  end

  test "should get index" do
    get picks_index_url
    assert_response :success
  end

  test "should get update" do
    get picks_update_url
    assert_response :success
  end

end
