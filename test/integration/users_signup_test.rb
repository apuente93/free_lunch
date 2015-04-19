require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { username:  "",
                               email: "user@invalid",
                               zip_code: 100000,
                               password:              "foo",
                               password_confirmation: "bar" }
    end
    assert_template 'users/new'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { username:  "Example User",
                                            email: "user@example.com",
                                            zip_code: 11111,
                                            password:              "password",
                                            password_confirmation: "password" }
    end
    
    assert is_logged_in?
    assert_template 'users/show'
  end
end
