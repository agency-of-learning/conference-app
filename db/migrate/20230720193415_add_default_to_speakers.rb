class AddDefaultToSpeakers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :speakers, :image_filename, "placeholder.png"
  end
end
