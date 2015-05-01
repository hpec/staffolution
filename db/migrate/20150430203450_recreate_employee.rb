class RecreateEmployee < ActiveRecord::Migration
  def change
    begin
      drop_table :employees, if_exists: true
    rescue
      p "employees table does not exsit, skip"
    end

    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email

      t.string :industry
      t.string :degree
      t.string :certifications
      t.string :years_of_experience
      t.string :pay_per_hour
      t.string :bio

      t.string :zipcode
      t.string :days_available
      t.string :distance_to_travel
      t.boolean :has_transportation
    end
  end
end
