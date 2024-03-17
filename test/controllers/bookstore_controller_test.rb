require "test_helper"

class BookstoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookstore_index_url
    assert_response :success
  end
end
