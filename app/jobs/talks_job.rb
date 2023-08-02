class TalksJob < ApplicationJob
  queue_as :default # critical...or mailer

  # UpdateUserTalkJob
  def perform(id) # all jobs have this!
    # Do something later You could call a service object for talks here
    talk = Talk.find(id)
    puts talk.title
    # talk.users.each do |user|
    #  Talk::UpdateNotification.with(talk: talk).deliver_later(user)
    # end
  end
end

# expect Talk to receive users
# expect Talk::UpdateNotification to receive talk deliver_later
