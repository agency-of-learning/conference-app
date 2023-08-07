class Talk < ApplicationRecord
  has_many :speakers_talks, dependent: :destroy, class_name: "SpeakerTalk"
  has_many :speakers, through: :speakers_talks

  has_many :talks_users, dependent: :destroy, class_name: "TalkUser"
  has_many :users, through: :talks_users

  has_many :talks_users, dependent: :destroy, class_name: "TalkUser"
  has_many :users, through: :talks_users

  validates :title, :location, :start_time, presence: true
  validates :duration, numericality: {greater_than_or_equal_to: 0}

  enum :talk_format, {
    keynote: 0,
    talk: 1,
    workshop: 2,
    panel: 3,
    social: 4
  }

  def selected_by?(user)
    talks_users.where(user: user).any?
  end
 
  scope :in_order, -> { order(:start_time) }

  scope :day_one, -> { 
    where("start_time BETWEEN ? AND ?", Date.new(2023, 10, 04), 
    Date.new(2023, 10, 05)) 
  }
    
  scope :day_two, -> { 
    where("start_time BETWEEN ? AND ?", Date.new(2023, 10, 05), 
    Date.new(2023, 10, 06)) 
  }

  scope :day_three, -> { 
    where("start_time BETWEEN ? AND ?", Date.new(2023, 10, 06), 
    Date.new(2023, 10, 07)) 
  }
end
