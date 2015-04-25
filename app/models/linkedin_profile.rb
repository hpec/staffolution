# == Schema Information
#
# Table name: linkedin_profiles
#
#  id          :integer          not null, primary key
#  uid         :string(255)
#  user_id     :integer
#  first_name  :string(255)
#  last_name   :string(255)
#  phone       :string(255)
#  location    :string(255)
#  profile_url :string(255)
#  industry    :string(255)
#  avatar      :string(255)
#  token       :string(255)
#  secret      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_linkedin_profiles_on_user_id  (user_id)
#

class LinkedinProfile < ActiveRecord::Base
  belongs_to :user
end
