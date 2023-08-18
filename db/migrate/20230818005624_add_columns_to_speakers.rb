class AddColumnsToSpeakers < ActiveRecord::Migration[7.0]
  def change
    add_column :speakers, :github, :string
    add_column :speakers, :linkedin, :string
    add_column :speakers, :twitter, :string
  end
end
