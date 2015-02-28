# == Schema Information
#
# Table name: employers
#
#  id                     :integer          not null, primary key
#  employer_name          :string(255)
#  employer_zipcode       :string(255)
#  employer_phone         :string(255)
#  employer_url           :string(255)
#  employer_email         :string(255)
#  user_id                :integer
#  employer_street_number :string(255)
#  employer_street        :string(255)
#  employer_unit_number   :string(255)
#  employer_city          :string(255)
#  employer_state         :string(255)
#  employer_office_type   :text
#  created_at             :datetime
#  updated_at             :datetime
#
# Indexes
#
#  index_employers_on_user_id  (user_id)
#

class Employer < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  has_many :reviews
  validates_formatting_of :employer_zipcode, using: :us_zip
  validates_formatting_of :employer_phone, using: :us_phone
  validates_formatting_of :employer_url, using: :url
  validates_formatting_of :employer_email, using: :email
  acts_as_votable 
end
