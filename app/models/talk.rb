class Talk < ApplicationRecord
  has_many :speaker_talks, dependent: :destroy
  has_many :speakers, through: :speaker_talks

  validates :title, :location, :start_time, presence: true
  validates :duration, numericality: {greater_than_or_equal_to: 0}
  # validates :talk_format, inclusion: { in: :talk_format }
  # validates :talk_track, inclusion: { in: :talk_track }

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
end
