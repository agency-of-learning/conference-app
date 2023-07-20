class Talk < ApplicationRecord
  has_many :speaker_talks
  has_many :speakers, through: :speaker_talks

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
