class CreateLinkedinProfiles < ActiveRecord::Migration
  def change
    create_table :linkedin_profiles do |t|
      t.string :uid
      t.references :user, index: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :location
      t.string :profile_url
      t.string :industry
      t.string :avatar
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
