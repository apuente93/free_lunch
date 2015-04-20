require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:ale)
  end

  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user: { username:  "",
                                    email: "foo@invalid",
                                    zip_code: 555555,
                                    password:              "foo",
                                    password_confirmation: "bar" }
    assert_template 'users/edit'
  end
  
  test "successful edit with friendly fowarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    username  = "Foo Bar"
    email = "foo@bar.com"
    zip_code = 53715
    patch user_path(@user), user: { username:  username,
                                    email: email,
                                    zip_code: zip_code,
                                    password:              "foobar",
                                    password_confirmation: "foobar" }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal @user.zip_code,  zip_code
    assert_equal @user.username,  username
    assert_equal @user.email, email
  end
end