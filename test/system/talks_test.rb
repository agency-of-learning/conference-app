require "application_system_test_case"

class TalksTest < ApplicationSystemTestCase
  setup do
    @talk = talks(:one)
  end

  test "visiting the index" do
    visit talks_url
    assert_selector "h1", text: "Talks"
  end

  test "should create talk" do
    visit talks_url
    click_on "New talk"

    fill_in "Description", with: @talk.description
    fill_in "Duration", with: @talk.duration
    fill_in "Location", with: @talk.location
    fill_in "Start time", with: @talk.start_time
    fill_in "Talk format", with: @talk.talk_format
    fill_in "Talk trak", with: @talk.talk_trak
    fill_in "Title", with: @talk.title
    click_on "Create Talk"

    assert_text "Talk was successfully created"
    click_on "Back"
  end

  test "should update Talk" do
    visit talk_url(@talk)
    click_on "Edit this talk", match: :first

    fill_in "Description", with: @talk.description
    fill_in "Duration", with: @talk.duration
    fill_in "Location", with: @talk.location
    fill_in "Start time", with: @talk.start_time
    fill_in "Talk format", with: @talk.talk_format
    fill_in "Talk trak", with: @talk.talk_trak
    fill_in "Title", with: @talk.title
    click_on "Update Talk"

    assert_text "Talk was successfully updated"
    click_on "Back"
  end

  test "should destroy Talk" do
    visit talk_url(@talk)
    click_on "Destroy this talk", match: :first

    assert_text "Talk was successfully destroyed"
  end
end
