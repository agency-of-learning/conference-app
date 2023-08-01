class AddNotificationPreferencesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :receive_app_notifications, :boolean, default: false
    add_column :users, :receive_email_notifications, :boolean, default: false
  end
end
