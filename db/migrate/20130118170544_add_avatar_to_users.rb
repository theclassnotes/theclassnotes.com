class AddAvatarToUsers < ActiveRecord::Migration
  def up
    change_table(:users) do |t|
      t.has_attached_file :avatar
      t.string :avatar_fingerprint
    end
  end

  def down
    drop_attached_file :users, :avatar
    remove_column :users, :avatar_fingerprint
  end
end
