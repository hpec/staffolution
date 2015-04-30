class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :employee, index: true
      t.references :job, index: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
