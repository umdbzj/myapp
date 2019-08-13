require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "CSC 105 Home"
  end

  test "should get schedule" do
    get schedule_path
    assert_response :success
    assert_select "title", "CSC 105 Schedule"
  end

  test "should get labs" do
    get labs_path
    assert_response :success
    assert_select "title", "CSC 105 Labs"
  end

  test "should get homework" do
    get homework_path
    assert_response :success
    assert_select "title", "CSC 105 Homework"
  end

  test "should get deadlines" do
    get deadlines_path
    assert_response :success
    assert_select "title", "CSC 105 Deadlines"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "CSC 105 Help"
  end
  
  test "should get resources" do
  	get resources_path
  	assert_response :success
  	assert_select "title", "CSC 105 Resources"
  end
  
  test "should get contact" do
  	get contact_path
  	assert_response :success
  	assert_select "title", "CSC 105 Contact"
  end
  
  test "instance variables not nil" do
  	get contact_path
  	assert_response :success
  	assert_not_nil assigns(:name)
  	assert_not_nil assigns(:adj)
  	assert_not_nil assigns(:profaction)
  	assert_not_nil assigns(:adv)
  	assert_not_nil assigns(:act)
  	assert_not_nil assigns(:result)
  	assert_not_nil assigns(:result2)
  end
  
  test "should get about" do
  	get about_path
  	assert_response :success
  	assert_select "title", "CSC 105 About"
  end
  
  

end
