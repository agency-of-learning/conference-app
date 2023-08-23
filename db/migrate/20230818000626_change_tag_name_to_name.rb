class ChangeTagNameToName < ActiveRecord::Migration[7.0]
  def change
    rename_column(:tags, :tag_name, :name)
  end
end
