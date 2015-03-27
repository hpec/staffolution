class RecreateEmployers < ActiveRecord::Migration
  def change
    drop_table :employers
    
    create_table :employers do |t|
      t.references :user, index: true
      
      t.string :name
      t.string :phone
      t.string :website
      t.string :email
      t.string :office_type
      
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps
    end
  end

end
