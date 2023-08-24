require "application_system_test_case"

class NotificationsTest < ApplicationSystemTestCase
  setup do
    attendee = users(:attendee)
    talk = talks(:talk)
    sign_in attendee 
    visit user_notifications_path
  end

  test "visiting the notification index page with no notifications" do 
    assert_selector "h1", text: "Notifications"
    assert_selector "h3", text: "No unread Notifications"
     assert_selector('div#unread_notifications', text: '')
    click_on "Past"
    assert_selector('div#read_notifications', text: '')
  end 

  test "notifications properly populate div#unread_notifications" do 
    attendee = users(:attendee)
    talk = talks(:talk)
    notification = Talk::ReminderNotification.new(recipient: attendee, type: "Talk::ReminderNotification", params: {talk: talk})
    Talk::ReminderNotification.with(talk: talk).deliver(attendee)
    assert 1, attendee.notifications.count
    page.refresh
    assert_selector('em', text: '1') 
    assert_selector('em', text: talk.title) 
  end 

  test "notifications properly populate div#read_notifications" do 
    attendee = users(:attendee)
    talk = talks(:talk)
    notification = Talk::ReminderNotification.new(recipient: attendee, type: "Talk::ReminderNotification", params: {talk: talk})
    Talk::ReminderNotification.with(talk: talk).deliver(attendee)
    assert 1, attendee.notifications.count
    page.refresh
    click_on talk.title
    assert_selector("h3", text:"Notification Details")
    assert_selector("div", text:talk.title)
    click_on "Back" 
    assert_selector('div#unread_notifications', text: '')
    click_on "Past"
    assert_selector('div#read_notifications', text: talk.title)
  end 
end
