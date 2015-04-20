require 'test_helper'

class StoresControllerTest < ActionController::TestCase
  
  def setup
    @store = Store.new(name: "Madison Fresh", zip_code: 10000)
     @user = users(:archer)
  end
  
  test "should redirect create when logged in as a non-admin" do
    log_in_as(@user)
    assert_no_difference 'User.count' do
      get 'new', id: @user
    end
    assert_redirected_to root_url
  end

end
