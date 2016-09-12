require 'test_helper'

class ConcertControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get concert_index_url
    assert_response :success
  end

  test "should get show" do
    get concert_show_url
    assert_response :success
  end

end
