require "test_helper"

class SpeakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:attendee)
    @speaker = speakers(:speaker_two)
  end

  test "authenticated user should show speaker" do
    get speaker_url(@speaker)
    assert_response :success
  end

  test "un-authenticated user should not show speaker" do
    sign_out :user
    get speaker_url(@speaker)
    assert_response :redirect
  end

end
