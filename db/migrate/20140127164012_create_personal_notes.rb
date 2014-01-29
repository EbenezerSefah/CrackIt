class CreatePersonalNotes < ActiveRecord::Migration
  def change
    create_table :personal_notes do |t|
      t.integer :session_id
      t.text :note
      t.timestamps
    end
  end
end
