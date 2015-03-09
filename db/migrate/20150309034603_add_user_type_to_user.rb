class AddUserTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_employer, :boolean
  end
end
