require "test_helper"

class TalksUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:attendee)
    sign_in @user
    @talk = talks(:talk)
  end


  test "returns a user current talks" do
    get user_root_url(@user)
    assert_response :success
  end

  test "returns a user past talks" do
  end

  test "returns a user future talks" do
  end

  test "user can save talk to their schedule" do
    assert_difference('TalkUser.count') do
      post talk_my_schedule_url(format: :turbo_stream, talk_id: @talk.id)
    end
  end

  test "responds with turbo stream" do
    post talk_my_schedule_url(format: :turbo_stream, talk_id: @talk.id)
    assert_response :success
    @response.body.include? "turbo-stream"
  end

end
