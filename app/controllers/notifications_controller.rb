class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @notifications = current_user.notifications.unread
  end

  def read(notification, talk)
    notification.update(read_at: Time.current)
    redirect_to talk_path(talk)
  end 

  def read_all
    current_user.notifications.map {|n| n.update(read_at: Time.current)}
    redirect_to user_notifications_path
  end 

end
