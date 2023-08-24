class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
    add_column :users, :twitter, :string
    add_column :users, :private, :boolean
  end
end