class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :creator_id
      t.datetime :time
      t.text :note
      t.string :interviewer_email
      t.string :interviewee_email
      t.timestamps
    end
  end
end
