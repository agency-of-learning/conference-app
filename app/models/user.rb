class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :linkedin, url: { host: /linkedin\.com\Z/ }
  validates :github, url: { host: /github\.com\Z/ }
  validates :twitter, url: { host: /.\Z/}
  
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :notifications, as: :recipient
  has_many :talks_users, dependent: :destroy, class_name: "TalkUser"
  has_many :talks, through: :talks_users

  has_one_attached :profile_photo, dependent: :destroy 
  has_one_attached :qrcode, dependent: :destroy 

  enum :role, attendee: 0, admin: 1

  def unread_notifications_count 
    self.notifications.unread.count
  end 

  def qr_code
    # qrcode = RQRCode::QRCode.new("")

    RQRCode::QRCode.new("localhost:3000/users/#{self.id}").as_svg(
      color: "3b1d62",
      shape_rendering: "crispEdges",
      standalone: true,
      use_path: true
    )
  end
end
