class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @unread_notifications = current_user.notifications.unread
    @read_notifications = current_user.notifications.read
  end
  #TODO REWORK THESE
  def read(notification, talk)
    notification.update(read_at: Time.current)
    redirect_to talk_path(talk)
  end 

  def read_all
    current_user.notifications.map {|n| n.update(read_at: Time.current)}
    redirect_to user_notifications_path
  end 

end
