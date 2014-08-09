require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get ifttt" do
    get :ifttt
    assert_response :success
  end

end
