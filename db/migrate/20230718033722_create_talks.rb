class CreateTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :talks do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.string :location
      t.integer :talk_format
      t.integer :talk_track
      t.integer :duration

      t.timestamps
    end
  end
end
