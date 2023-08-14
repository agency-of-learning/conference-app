#I get called in config/initializer/scheduler.rb
class Talk::FanOutToUsersJob < ApplicationJob
  queue_as :default

  def perform(talk)
    talk.users.each do |user|
      Talk::ScheduleUserReminderJob.perform_later(user, talk)
    end 
  end
end
