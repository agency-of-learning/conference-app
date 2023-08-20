class Talk::ScheduleUserReminderJob < ApplicationJob
  queue_as :default

  def perform(user, talk)
    send_time = 20.minutes.before(talk.start_time)
    Talk::TalkReminderNotificationJob.set(wait_until: send_time).perform_later(user, talk)
  end
end
