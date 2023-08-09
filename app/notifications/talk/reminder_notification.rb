# To deliver this notification:
#
# Talk.with(post: @post).deliver_later(current_user)
# Talk.with(post: @post).deliver(current_user)
# Talk::ReminderNotification.with(talk: Talk.last).deliver(User.last)
class Talk::ReminderNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database # notification in the database, if you wanted to view all of your notifications
  deliver_by :action_cable, 
  if: :app_notifications? # triggers certain state, broadcast to in the model, update the UI without the need to refresh
    
  deliver_by :email,
    mailer: "TalkMailer",
    method: :remind_for_upcoming_talk,
    if: :email_notifications?
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  #
  param :talk, :title, :start_time, :full_time

  # Define helper methods to make rendering easier.
  def message
    t(".message")
  end

  def url
    post_path(params[:talk])
  end

  def title 
    params[:title]
  end 

  def start_time 
    params[:start_time]
  end 

  def full_time 
    params[:full_time]
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
