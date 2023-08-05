class Talk::UpdateNotification < Noticed::Base
  # Add your delivery methods
  #
  #deliver_by :database
  #deliver_by :action_cable,
  #  if: :app_notifications?

  #deliver_by :email,
  #  mailer: "TalkMailer",
  #  method: :update_for_talk,
  #  if: :email_notifications?
  ##########This Notification Potentially Through Slack!!!###################
  # deliver_by :slack
  ##########This Notification Potentially Through Slack!!!################### (in app notification as well?)
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  param :talk, :changes
  # Define helper methods to make rendering easier.
  #
  def message
    t(".message")
  end

  def url
    talk_path(params[:talk])
  end

end
