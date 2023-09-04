#I get called in config/initializer/scheduler.rb
#NOTE: should I even exist?
class Talk::FanOutToUsersJob < ApplicationJob
  queue_as :default

  def perform(talk)
    talk.unnotified_users.each do |user|
      Talk::ScheduleUserReminderJob.perform_later(user, talk)
    end 
  end
end
