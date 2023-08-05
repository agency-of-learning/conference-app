class RemoveTalkTracksFromTalks < ActiveRecord::Migration[7.0]
  def change
    remove_column(:talks, :talk_track)
  end
end
