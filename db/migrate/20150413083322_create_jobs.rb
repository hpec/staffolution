class CreateJobs < ActiveRecord::Migration
  def change
    begin
      drop_table :jobs, if_exists: true
    rescue
      p "jobs table does not exsit, skip"
    end
    create_table :jobs do |t|
      t.string :name
      t.text :description
      t.references :employer, index: true
      t.references :employee, index: true
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :compensation
      t.string :position

      t.timestamps
    end
  end
end
