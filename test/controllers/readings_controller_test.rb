require 'test_helper'

class ReadingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get add_reading_path
    assert_response :success
  end

end
