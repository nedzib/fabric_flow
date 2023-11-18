require "test_helper"

class ResourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get directory" do
    get resources_directory_url
    assert_response :success
  end
end
