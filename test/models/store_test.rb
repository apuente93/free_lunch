require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  
  def setup
    @store = Store.new(name: "Madison Fresh", zip_code: 10000)
  end
  
  test "should be valid" do
    assert @store.valid?
  end
  
  test "name should be present" do
    @store.name = "     "
    assert_not @store.valid?
  end
  
  test "zip code should be present" do
    @store.zip_code = nil
    assert_not @store.valid?
  end
  
  test "name should not be too long" do
    @store.name = "a" * 31
    assert_not @store.valid?
  end
  
  test "zip_code should not be longer than 5 integers" do
    @store.zip_code = 100000
    assert_not @store.valid?
  end
  
  test "names should be unique" do
    duplicate_store = @store.dup
    duplicate_store.name = @store.name.upcase
    @store.save
    assert_not duplicate_store.valid?
  end
  
end
