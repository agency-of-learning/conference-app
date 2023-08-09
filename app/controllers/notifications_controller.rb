class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @unread_notifications = current_user.notifications.unread
    @read_notifications = current_user.notifications.read
  end

  def read_all
    current_user.notifications.unread.map {|n| n.mark_as_read!}
    redirect_to user_notifications_path
  end 
end
