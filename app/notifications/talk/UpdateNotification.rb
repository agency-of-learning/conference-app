class Talk::UpdateNotification < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  deliver_by :action_cable,
    if: :app_notifications?

  deliver_by :email,
    mailer: "TalkMailer",
    method: :update_for_talk,
    if: :email_notifications?
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  # Add required params
  param :talk, :changes
  # Define helper methods to make rendering easier.
  #
  def message
    t(".message")
  end

  def url
    post_path(params[:talk])
  end

  def app_notifications?
    recipient.receive_app_notifications
  end

  def email_notifications?
    recipient.receive_email_notifications
  end
end
