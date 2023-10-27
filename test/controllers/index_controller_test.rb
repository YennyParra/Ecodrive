require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get termino" do
    get index_termino_url
    assert_response :success
  end
end
