require 'test_helper'

class ClientControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get client_index_url
    assert_response :success
  end

  test "should get food" do
    get client_food_url
    assert_response :success
  end

  test "should get list_trainers" do
    get client_list_trainers_url
    assert_response :success
  end

end
