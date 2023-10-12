require "test_helper"

class TalkTest < ActiveSupport::TestCase
  setup do
    @talk = talks(:talk)
  end

  test "calculates end_time on create"  do
    travel_to Time.current
    talk = Talk.create!(
      @talk.attributes.slice("title", "description", "location", "talk_format").merge(
        start_time: 45.minutes.from_now,
        duration: 30
      )
    )
    assert_equal 75.minutes.from_now, talk.end_time
  end

  test "calculates end_time on update"  do
    @talk.update!(duration: 13)
    assert_equal @talk.start_time + 13.minutes, @talk.end_time
  end

  test "upcoming scope includes talk before it starts" do
    travel_to @talk.start_time - 10.minutes
    assert_includes Talk.upcoming, @talk
  end

  test "upcoming scope includes talk while in sessiion" do
    travel_to @talk.end_time - 10.minutes
    assert_includes Talk.upcoming, @talk
  end

  test "upcoming scope does not include talk after it ends" do
    travel_to @talk.end_time + 10.minutes
    assert_not_includes Talk.upcoming, @talk
  end

  test "past scope does not include a talk before it starts" do
    travel_to @talk.start_time - 10.minutes
    assert_not_includes Talk.past, @talk
  end
  
  test "past scope does not include talk while in session" do
    travel_to @talk.end_time - 10.minutes
    assert_not_includes Talk.past, @talk
  end

  test "past scope includes talk after it ends" do
    travel_to @talk.end_time + 10.minutes
    assert_includes Talk.past, @talk
  end
end
