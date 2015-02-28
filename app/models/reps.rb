# == Schema Information
#
# Table name: reps
#
#  id              :integer          not null, primary key
#  rep_name        :string(255)
#  rep_type        :string(255)
#  rep_description :text
#  user_id         :integer
#  rep_email       :string(255)
#  rep_phone       :string(255)
#  rep_url         :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_reps_on_user_id  (user_id)
#

class Reps < ActiveRecord::Base
  belongs_to :user
  has_many :education_classes
  validates_formatting_of :rep_email, using: :email
  validates_formatting_of :rep_phone, using: :us_phone
  validates_formatting_of :rep_url, using: :url
  acts_as_votable 
end
