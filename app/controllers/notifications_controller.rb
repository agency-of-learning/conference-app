class NotificationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @unread_notifications = current_user.notifications.unread.order('notifications.created_at DESC')
    @read_notifications = current_user.notifications.read.order('notifications.created_at DESC')
  end

  def read_all
    current_user.notifications.unread.map(&:mark_as_read!)
    redirect_to user_notifications_path
  end 
end
