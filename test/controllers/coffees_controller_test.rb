require 'test_helper'

class CoffeesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Cupped"
    @roaster = coffees(:ethiopian)
    @user = users(:michael)
  end
  
  test "should fail to get new when not logged in" do
    get new_coffee_path
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should get new when logged in" do
    log_in_as(@user)
    get new_coffee_path
    assert_response :success
    assert_select 'title', "Add coffee | #{@base_title}"
  end
end
