class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.integer :session_id
      t.text :code_text
      t.timestamps
    end
  end
end
