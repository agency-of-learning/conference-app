class CreateSpeakers < ActiveRecord::Migration[7.0]
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :title
      t.text :bio
      t.string :image_filename

      t.timestamps
    end
  end
end
