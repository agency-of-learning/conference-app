class CreateTalksUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :talks_users do |t|
      t.references :talk, index: true, foreign_key: true, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
