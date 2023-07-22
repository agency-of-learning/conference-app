class CreateTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :talks do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :start_time, null: false
      t.string :location, null: false
      t.integer :talk_format
      t.integer :talk_track
      t.integer :duration, null: false

      t.timestamps
    end
  end
end
