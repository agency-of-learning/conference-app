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

  def show 
    @notification = Notification.find(params[:id])
    @notification.mark_as_read!
  rescue ActiveRecord::RecordNotFound 
    redirect_to talks_url, notice: "Record or page does not exist"
  end 
end
