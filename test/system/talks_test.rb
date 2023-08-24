require "application_system_test_case"

class TalksTest < ApplicationSystemTestCase
  setup do
    admin = users(:admin)
    sign_in admin
    @talk = talks(:talk)
  end

  test "visiting the index" do
    visit talks_url
    assert_selector "h1", text: "Agenda"
  end

  test "should create talk" do
    visit talks_url
    click_on "New talk"

    fill_in "Description", with: @talk.description
    fill_in "Duration", with: @talk.duration
    fill_in "Location", with: @talk.location
    fill_in "Start time", with: @talk.start_time
    select "Keynote", :from => "talk_talk_format"
    fill_in "Title", with: @talk.title
    click_on "Create Talk"

    assert_text "Talk was successfully created"
    click_on "Back"
  end

  test "should update Talk" do
    visit talk_url(@talk)
    click_on "Edit this talk", match: :first

    fill_in "Description", with: @talk.description
    fill_in "Duration", with: @talk.duration + 5.days
    fill_in "Location", with: @talk.location
    fill_in "Start time", with: DateTime.current.strftime("%m%d%Y\t%I%M%P")
    select "Talk", :from => "talk_talk_format"
    fill_in "Title", with: @talk.title
    click_on "Update Talk"
    assert_text "Talk was successfully updated."
    click_on "Back"
  end

  test "should destroy Talk" do
    visit talk_url(@talk)
    accept_alert {click_on "Delete", match: :first} 
    assert_text "Talk was successfully deleted"
  end
end
