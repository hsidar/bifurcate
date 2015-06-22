require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get add_entry" do
    get :add_entry
    assert_response :success
  end

  test "should get show_month" do
    get :show_month
    assert_response :success
  end

end
