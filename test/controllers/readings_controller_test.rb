require 'test_helper'

class ReadingsControllerTest < ActionDispatch::IntegrationTest

  def setup
  	@reading = Reading.new(author: "Test Author", title: "Test Title", assign: "Intro", day: 0)
  end
  
  test "should get new" do
    get add_reading_path
    assert_response :success
  end
  
  test "author should be present" do
  	@reading.author = "       "
  	assert_not @reading.valid?
  end
  
  test "title should be present" do
  	@reading.title = "     "
  	assert_not @reading.valid?
  end

end
