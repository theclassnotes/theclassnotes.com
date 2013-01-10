class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :title, :null => false
      t.integer :user_id, :null => false
      t.text :body, :null => false
      t.has_attached_file :title_image

      t.timestamps
    end
  end
end
