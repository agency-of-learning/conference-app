class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true

  scope :unread, -> { where(read_at: nil).order(created_at: :desc) }

  after_create_commit -> { broadcast_prepend_to "notifications"}
  #after_update_commit -> { broadcast_replace_to "notifications"}
  after_create_commit do
    broadcast_replace_to "broadcast_to_user_#{self.recipient_id}", 
      target: "notifications_count", 
      partial: "notifications/count", 
      locals: { count: self.recipient.unread_notifications_count }
  end

  after_create_commit do
    broadcast_replace_to "mobile", 
      target: "notifications_count_mobile", 
      partial: "notifications/count_mobile", 
      locals: { count: self.recipient.unread_notifications_count }
  end

  def talk_title
    if self[:params][:talk]
      self[:params][:talk][:title]
    end 
  end 

  def talk_start_time 
     if self[:params][:talk]
      self[:params][:talk][:start_time].strftime("%I:%M %p, %a %d, %b %Y")
     end 
  end 

  def talk 
    self[:params][:talk]
  end 
end
