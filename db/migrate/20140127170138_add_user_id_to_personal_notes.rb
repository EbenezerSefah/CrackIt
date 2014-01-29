class AddUserIdToPersonalNotes < ActiveRecord::Migration
  def change
    add_column :personal_notes, :user_id, :integer
  end
end
