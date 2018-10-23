require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
 def setup
	@base_title = "Ruby on Rails Tutorial Sample App"
 end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title","Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
  	get about_path
  	assert_response :success
  	assert_select "title", "About | Ruby on Rails Tutorial Sample App"
   end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
  # ENV['RAILS_ENV'] ||= 'test'
  # require File.expand_path('../../config/environment', __FILE__)
  # require 'rails/test_help'
  # require "minitest/reporters"
  # Minitest::Reporters.use!

  class ActiveSupport::TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests
    # in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
