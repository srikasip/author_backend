require 'test_helper'

class AuthorMethodsControllerTest < ActionController::TestCase
  test "should get :subscribe" do
    get ::subscribe
    assert_response :success
  end

end
