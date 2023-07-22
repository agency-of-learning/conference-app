class Speaker < ApplicationRecord
  has_many :speakers_talks, dependent: :destroy, class_name: "SpeakerTalk"
  has_many :talks, through: :speakers_talks

  validates :name, presence: true
  validates :image_filename, format: {
    with: /\w+\.(jpg|png|heic|heics)\z/i,
    message: "must be a JPG, PNG or HEIC image"
  }
end
