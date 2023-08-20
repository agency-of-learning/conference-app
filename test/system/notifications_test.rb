require "application_system_test_case"

class NotificationsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit notifications_url
  #
  #   assert_selector "h1", text: "Notifications"
  # end

  test "visiting the notification index page" do 
    user = users(:attendee)
    sign_in user 

    visit user_notifications_path

    assert_selector "h1", text: "Notifications"
  end 
end
