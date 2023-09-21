require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:attendee)
    @comment = comments(:one)
  end


  test "authenticated user should get new" do
    get new_comment_url
    assert_response :success
  end

  test "un-authenticated user should not get new" do
    sign_out :user
    get new_comment_url
    assert_response :redirect
  end

  test "should create comment" do
    assert_difference("Comment.count") do
      post comments_url, params: { comment: { comment: @comment.comment } }
    end

    assert_redirected_to user_root_url
  end
end
