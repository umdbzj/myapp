require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get schedule" do
    get static_pages_schedule_url
    assert_response :success
  end

  test "should get labs" do
    get static_pages_labs_url
    assert_response :success
  end

  test "should get homework" do
    get static_pages_homework_url
    assert_response :success
  end

  test "should get deadlines" do
    get static_pages_deadlines_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end
  
  test "should get resources" do
  	get static_pages_resources_url
  	assert_response :success
  end

end
