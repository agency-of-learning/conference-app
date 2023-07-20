class Speaker < ApplicationRecord
  has_many :speaker_talks
  has_many :talks, through: :speaker_talks
end
