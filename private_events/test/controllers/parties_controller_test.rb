require "test_helper"

class PartiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get party_index_url
    assert_response :success
  end
end
