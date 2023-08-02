class TalkReminderNotificationJob < ApplicationJob
  queue_as :default

  def perform(id) # This Job needs
    # Note: Do something later You could call a service object for talks here
    talk = Talk.find(id)
    puts talk.title
    #example call to notfication: Talk::ReminderNotification.with(talk: talk).deliver_later(User.find_by_email("admin@example.com"))

    #"Real" pseudo-code, once User-Talk relationship is established
    # talk.users.each do |user|
    #  Talk::ReminderNotification.with(talk: talk).deliver_later(user)
    # end
  end
end