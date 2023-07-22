class Speaker < ApplicationRecord
  has_many :speaker_talks, dependent: :destroy
  has_many :talks, through: :speaker_talks

  validates :name, presence: true
  validates :image_filename, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: "must be a JPG or PNG image"
  }
end
