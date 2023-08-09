class TalkUpdateNotificationJob < ApplicationJob
  queue_as :default
  #######TODO: Maybe implement through Slack#######
  def perform(*args) #Same notes as TalkReminderNotification, waiting on User Talk relationship
    # Do something later You could call a service object for talks here

    #talk = Talk.find(args[0])
    #changes = args[1]
    #changes.delete(:updated_at)
    #puts talk.title
    #Talk::UpdateNotification.with(talk: talk, changes: changes).deliver(User.find_by_email("admin@example.com"))
    # talk.users.each do |user|
    #  Talk::UpdateNotification.with(talk: talk).deliver_later(user)
    # end
  end
end

# expect Talk to receive users
# expect Talk::UpdateNotification to receive talk deliver_later
