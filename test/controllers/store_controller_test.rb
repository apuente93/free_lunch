require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  
  def setup
    @store = Store.new(name: "Madison Fresh", zip_code: 10000)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

end
