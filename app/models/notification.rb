class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true

  after_create_commit -> { broadcast_before_to "notifications", target: "notifications_display"}

  #after_create_commit -> { broadcast_update_to "nu", target: "notifications_update"}
  after_update_commit -> { broadcast_update_to "notifications_update", target: "notifications_update"}

  after_create_commit do
    broadcast_update_to "broadcast_to_user_#{self.recipient_id}", 
      target: "notifications_count", 
      partial: "notifications/count", 
      locals: { count: self.recipient.unread_notifications_count }
  end

  after_create_commit do
    broadcast_update_to "mobile", 
      target: "notifications_count_mobile", 
      partial: "notifications/count_mobile", 
      locals: { count: self.recipient.unread_notifications_count }
  end

  after_create_commit do
    broadcast_update_to "menu", 
      target: "notifications_count_menu", 
      partial: "notifications/count_menu", 
      locals: { count: self.recipient.unread_notifications_count }
  end
end
