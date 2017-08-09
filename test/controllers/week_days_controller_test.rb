require 'test_helper'

class WeekDaysControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get week_days_show_url
    assert_response :success
  end

  test "should get create" do
    get week_days_create_url
    assert_response :success
  end

end
