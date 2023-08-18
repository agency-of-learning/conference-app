class TagTalk < ApplicationRecord
  self.table_name = "tags_talks"
  
  belongs_to :tag
  belongs_to :talk
  
end