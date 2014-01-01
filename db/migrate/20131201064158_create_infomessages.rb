class CreateInfomessages < ActiveRecord::Migration
  def change
    create_table :infomessages do |t|
      t.string :text
      t.integer :display_time
      t.integer :priority, nil: false
      t.string :image

      t.timestamps
    end
  end
end
