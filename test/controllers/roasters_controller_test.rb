require 'test_helper'

class RoastersControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Cupped"
    @roaster = roasters(:demello)
    @user = users(:michael)
  end
  
  test "should fail to get new when not logged in" do
    get new_roaster_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should get new when logged in" do
    log_in_as(@user)
    get new_roaster_path
    assert_response :success
    assert_select 'title', "Add roaster | #{@base_title}"
  end
end
