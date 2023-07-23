class SpeakerTalk < ApplicationRecord
  self.table_name = "speakers_talks"

  belongs_to :speaker
  belongs_to :talk
end
