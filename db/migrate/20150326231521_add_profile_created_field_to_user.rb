class AddProfileCreatedFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_created, :boolean
  end
end
