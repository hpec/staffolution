class AddFieldsToEmployer < ActiveRecord::Migration
  def change
    add_column :employers, :contact_person, :string
    add_column :employers, :industry, :string
    add_column :employers, :hours, :string
    add_column :employers, :description, :string
    remove_column :employers, :office_type, :string
  end
end
