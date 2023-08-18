class CreateTagsTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :tags_talks do |t|
      t.references :tag, index: true, foreign_key: true, null: false
      t.references :talk, index: true, foreign_key: true, null: false
      
      t.timestamps
    end
  end
end
