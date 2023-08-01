class Talk < ApplicationRecord
  has_many :speakers_talks, dependent: :destroy, class_name: "SpeakerTalk"
  has_many :speakers, through: :speakers_talks
  
  has_many :talks_users, dependent: :destroy, class_name: "TalkUser"
  has_many :users, through: :talks_users

  validates :title, :location, :start_time, presence: true
  validates :duration, numericality: {greater_than_or_equal_to: 0}

  enum :talk_format, {
    keynote: 0,
    session: 1,
    workshop: 2,
    panel: 3,
    social: 4
  }

  enum :talk_track, {
    technical: 0,
    community: 1,
    career: 2
  }

  def self.by_start_time
    Talk.all.order("start_time")
  end

  def self.my_schedule(user)
    User.find(user.id).talks
  end

  def selected_by?(user)
    talks_users.where(user: user).any?
  end

  def select(user)
    talks_users.where(user: user).first_or_create
  end

  def un_select(user)
    talks_users.where(user: user).destroy_all
  end
end
