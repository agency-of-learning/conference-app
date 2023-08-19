class NotificationPreferencesController < ApplicationController
  before_action :set_user 

  def notification_settings 
    @user = current_user
  end 

  def update 
    @user.update(user_params)
    if user_params[:receive_email_notifications]
      respond_to do |format|
        format.html         { render :notification_settings }
        format.turbo_stream { render :update_email }
      end
    else 
      respond_to do |format|
      format.html         { render :notification_settings }
      format.turbo_stream { render :update_push }
      end
    end 
  end 

  protected 

  def set_user 
   @user = current_user
  end 

  def user_params
    params.require(:user).permit(:receive_app_notifications, :receive_email_notifications) 
  end 

end
