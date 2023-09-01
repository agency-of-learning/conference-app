class CreateContributors < ActiveRecord::Migration[7.0]
  def change
    create_table :contributors do |t|
      t.string :name, null: false
      t.string :title
      t.text :bio
      t.string :image_filename
      t.string :github
      t.string :linkedin
      t.string :twitter

      t.timestamps
    end
  end
end
