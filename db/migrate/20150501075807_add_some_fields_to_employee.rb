class AddSomeFieldsToEmployee < ActiveRecord::Migration
  def change
    add_reference :employees, :user, index: true
    add_column :employees, :school, :string
  end
end
