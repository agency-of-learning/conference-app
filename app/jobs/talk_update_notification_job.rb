class TalkUpdateNotificationJob < ApplicationJob
  queue_as :default

  def perform(id) #Same notes as TalkReminderNotification, waiting on User Talk relationship
    # Do something later You could call a service object for talks here
    talk = Talk.find(id)
    puts talk.title
    #Talk::UpdateNotification.with(talk: talk).deliver_later(User.find_by_email("admin@example.com"))
    # talk.users.each do |user|
    #  Talk::UpdateNotification.with(talk: talk).deliver_later(user)
    # end
  end
end

# expect Talk to receive users
# expect Talk::UpdateNotification to receive talk deliver_later
