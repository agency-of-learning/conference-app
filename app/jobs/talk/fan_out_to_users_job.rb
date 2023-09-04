#I get called in config/initializer/scheduler.rb
#NOTE: should I even exist?
class Talk::FanOutToUsersJob < ApplicationJob
  queue_as :default

  def perform(talk)
    talk.unnotified_users.each do |user|
      return if !user.talks.include?(talk) #in case a user removes a talk
      return if user.notifications.any? {|n| n.type == "Talk::ReminderNotification" && n.to_notification.talk == talk}
      
      Talk::ScheduleUserReminderJob.perform_later(user, talk)
    end 
  end
end
