class Tag < ApplicationRecord
  has_many :tags_talks, dependent: :destroy, class_name: "TagTalk"
  has_many :talks, through: :tags_talks

  validates :name, uniqueness: true
end