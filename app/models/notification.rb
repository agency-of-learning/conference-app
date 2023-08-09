class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true

  after_create_commit -> { broadcast_after_to "notifications", target: "notifications_display"}
  
  after_create_commit do
    broadcast_replace_to "broadcast_to_user_#{self.recipient_id}", 
      target: "notifications_count", 
      partial: "notifications/count", 
      locals: { count: self.recipient.unread_notifications_count }
  end

  after_create_commit do
    broadcast_update_to "mobile", 
      target: "notifications_count_mobile", 
      targets: "count",
      partial: "notifications/count_mobile", 
      locals: { count: self.recipient.unread_notifications_count }
  end
end
