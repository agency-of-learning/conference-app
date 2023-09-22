require "test_helper"

class TalksControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:attendee)
    @talk = talks(:talk)
  end

  test "authenticated user should get index" do
    get talks_url
    assert_response :success
  end

  test "un-authenticated user should not get index" do
    sign_out :user
    get talks_url
    assert_response :redirect
  end


  test "authenticated user should show talk" do
    get talk_url(@talk)
    assert_response :success
  end

  test "un-authenticated user should not show talk" do
    sign_out :user
    get talk_url(@talk)
    assert_response :redirect
  end

end
