require 'test_helper'

require "minitest/reporters"
Minitest::Reporters.use!

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
	def setup
		 @base_title = "Ruby on Rails Tutorial Sample App"
  	end	
  test "should get home" do
    get get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
  	get about_path
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
  end

  test "static_pages_contant_url"  do
  	get contact_path
  	assert_response :success
  	assert_select "title", "Contact | #{@base_title}" 
  end
end
