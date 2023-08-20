require "application_system_test_case"

class SpeakersTest < ApplicationSystemTestCase
  setup do
    admin = users(:admin)
    sign_in admin
    @speaker = speakers(:speaker_one)
  end

  test "visiting the index" do
    visit speakers_url
    assert_selector "h1", text: "Speakers"
  end

  test "should create speaker" do
    visit speakers_url
    click_on "New speaker"

    fill_in "Bio", with: @speaker.bio
    fill_in "Image filename", with: @speaker.image_filename
    fill_in "Name", with: @speaker.name
    fill_in "Title", with: @speaker.title
    click_on "Create Speaker"

    assert_text "Speaker was successfully created"
    click_on "Back"
  end

  test "should update Speaker" do
    visit speaker_url(@speaker)
    click_on "Edit this speaker", match: :first

    fill_in "Bio", with: @speaker.bio
    fill_in "Image filename", with: @speaker.image_filename
    fill_in "Name", with: @speaker.name
    fill_in "Title", with: @speaker.title
    click_on "Update Speaker"

    assert_text "Speaker was successfully updated"
    click_on "Back"
  end

  test "should destroy Speaker" do
    visit speaker_url(@speaker)
    accept_alert {click_on "Delete", match: :first}
    assert_text "Speaker was successfully deleted"
  end
end
