# To deliver this notification:
#
# Talk.with(post: @post).deliver_later(current_user)
# Talk.with(post: @post).deliver(current_user)
# Talk::ReminderNotification.with(talk: Talk.last).deliver(User.last)
class Talk::ReminderNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database 
  deliver_by :email,
    mailer: "TalkMailer",
    method: :remind_for_upcoming_talk,
    if: :email_notifications?

  param :talk

  # Define helper methods to make rendering easier.
  def message
    t(".message")
  end

  def url
    post_path(params[:talk])
  end

  def talk 
    params[:talk]
  end 

  def app_notifications?
    recipient.receive_app_notifications
  end

  def email_notifications?
    recipient.receive_email_notifications
  end
end
