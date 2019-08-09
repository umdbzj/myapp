require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "CSC 105 Home"
  end

  test "should get schedule" do
    get static_pages_schedule_url
    assert_response :success
    assert_select "title", "CSC 105 Schedule"
  end

  test "should get labs" do
    get static_pages_labs_url
    assert_response :success
    assert_select "title", "CSC 105 Labs"
  end

  test "should get homework" do
    get static_pages_homework_url
    assert_response :success
    assert_select "title", "CSC 105 Homework"
  end

  test "should get deadlines" do
    get static_pages_deadlines_url
    assert_response :success
    assert_select "title", "CSC 105 Deadlines"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "CSC 105 Help"
  end
  
  test "should get resources" do
  	get static_pages_resources_url
  	assert_response :success
  	assert_select "title", "CSC 105 Resources"
  end

end
