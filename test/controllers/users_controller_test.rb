require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should redirect index when not logged in" do
   get :index
   assert_redirected_to login_url
end

end
