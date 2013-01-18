class AddRoleToUser < ActiveRecord::Migration
  def up
    add_column :users, :role, :string, :null => false, :default => "subscriber"
  end
  
  def down
    remove_column :users, :role
  end
end
