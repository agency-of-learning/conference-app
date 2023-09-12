class Talk < ApplicationRecord
  has_many :speakers_talks, dependent: :destroy, class_name: "SpeakerTalk"
  has_many :speakers, through: :speakers_talks

  has_many :talks_users, dependent: :destroy, class_name: "TalkUser"
  has_many :users, through: :talks_users
  
  has_many :tags_talks, dependent: :destroy, class_name: "TagTalk"
  has_many :tags, through: :tags_talks

  has_noticed_notifications

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
 
  def add_duration
    self.start_time + self.duration.minutes
  end
  
  scope :in_order, -> { order(:start_time) }

  scope :upcoming, -> { where(start_time: Time.now..) }
  
  scope :past, -> { where(start_time: ..Time.now) }

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

  scope :happening_today, -> {where("DATE(start_time) = ?", Date.current)}

  scope :in_thirty_minutes, -> { where(start_time: Time.current..(Time.current+30.minutes)) }

  def unnotified_users
    notified_user_ids = self.notifications_as_talk.pluck(:recipient_id)
    self.users.where.not(id: notified_user_ids)
  end

  def formatted_start_time
    self.start_time.strftime("%I:%M %p, %a %d, %b %Y") 
  end 

  def full_time
    "#{self.start_time.to_fs(:twenty_four_hour_and_minutes)} - #{self.add_duration.to_fs(:twenty_four_hour_and_minutes)}"
  end 

  def add_to_cal_object
    AddToCalendar::URLs.new(
      start_datetime: self.start_time.to_time,
      end_datetime: self.add_duration.to_time,
      title: self.title,
      description: self.description,
      location: self.location,
      timezone: 'Europe/Amsterdam'
    )
  end
end
