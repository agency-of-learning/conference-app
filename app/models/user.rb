class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :notifications, as: :recipient
  has_many :talks_users, dependent: :destroy, class_name: "TalkUser"
  has_many :talks, through: :talks_users

  enum :role, attendee: 0, admin: 1

  def unread_notifications_count 
    self.notifications.count {|n| !n.read_at}
  end 
end
