class AddProfileCreatedFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_created, :bool
  end
end
