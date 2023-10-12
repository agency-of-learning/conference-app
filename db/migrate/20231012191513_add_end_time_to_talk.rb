class AddEndTimeToTalk < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!
  def change
    add_column :talks, :end_time, :datetime
    add_index :talks, :end_time, algorithm: :concurrently
  end
end
