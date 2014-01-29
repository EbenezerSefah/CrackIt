class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :session_id
      t.string :link
      t.timestamps
    end
  end
end
