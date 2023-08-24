class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :notifications, as: :recipient
  has_many :talks_users, dependent: :destroy, class_name: "TalkUser"
  has_many :talks, through: :talks_users

  has_one_attached :profile_photo
  
  enum :role, attendee: 0, admin: 1

  def unread_notifications_count 
    self.notifications.unread.count
  end 
end
