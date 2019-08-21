require 'test_helper'

class ReadingsCreationTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "invalid reading added" do
  	get add_reading_path
  	assert_no_difference 'Reading.count' do
  		post readings_path, params: { reading: {author: "",
  												title: "",
  												assign: "",
  												day: 0 } }
  	end
  	assert_template 'readings/new'
  end
  
  test "valid reading added" do
  	get add_reading_path
  	assert_difference 'Reading.count', 1 do
  		post readings_path, params: { reading: {author: "Test Author",
  												title: "Test Title",
  												assign: "Test Assignment",
  												day: 0 } }
  		
  	end
  	follow_redirect!
  	assert_template 'readings/index'
  end
end
