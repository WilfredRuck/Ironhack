require 'test_helper'

class CommentControllerTest < ActionDispatch::IntegrationTest
  test "should get comments" do
    get comment_comments_url
    assert_response :success
  end

end
