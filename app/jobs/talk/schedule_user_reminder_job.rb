class Talk::ScheduleUserReminderJob < ApplicationJob
  queue_as :default

  def perform(user, talk)
    Talk::TalkReminderNotificationJob.perform_later(user, talk)
  end
end
