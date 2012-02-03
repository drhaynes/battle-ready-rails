class RemoveEncAndSaltFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :encrypted_password, :salt
  end
end
