require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
 def setup
	@base_title = "Ruby on Rails Tutorial Sample App"
 end
  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
  	get static_pages_about_url
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
   end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
  ENV['RAILS_ENV'] ||= 'test'
  require File.expand_path('../../config/environment', __FILE__)
  require 'rails/test_help'
  require "minitest/reporters"
  Minitest::Reporters.use!

  class ActiveSupport::TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests
    # in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end
