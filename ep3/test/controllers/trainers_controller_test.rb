require 'test_helper'

class TrainersControllerTest < ActionDispatch::IntegrationTest
  test "should get password" do
    get trainers_password_url
    assert_response :success
  end

  test "should get registration" do
    get trainers_registration_url
    assert_response :success
  end

end
