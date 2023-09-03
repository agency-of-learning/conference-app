class Talk::TalkReminderNotificationJob < ApplicationJob
  queue_as :default

  def perform(user, talk)
    return if user.notifications.any? {|n| n.type == "Talk::ReminderNotification" && n.to_notification.talk == talk}
    
    Talk::ReminderNotification.with(talk: talk).deliver(user)
  end
end