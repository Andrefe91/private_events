require "test_helper"

class PartyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get party_index_url
    assert_response :success
  end
end
