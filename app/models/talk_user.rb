class TalkUser < ApplicationRecord
  self.table_name = "talks_users"

  belongs_to :talk
  belongs_to :user
end
