class Talk::TalkReminderNotificationJob < ApplicationJob
  queue_as :default

  def perform(user, talk)
    return if !user.talks.include?(talk) #job shouldn't perform if user removed talk from their schedule
    return if user.notifications.any? {|n| n.type == "Talk::ReminderNotification" && n.to_notification.talk == talk} #extra check? just in case?

    Talk::ReminderNotification.with(talk: talk).deliver(user)
  end
end