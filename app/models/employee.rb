# == Schema Information
#
# Table name: employees
#
#  id                  :integer          not null, primary key
#  first_name          :string(255)
#  last_name           :string(255)
#  phone               :string(255)
#  email               :string(255)
#  industry            :string(255)
#  degree              :string(255)
#  certifications      :string(255)
#  years_of_experience :string(255)
#  pay_per_hour        :string(255)
#  bio                 :string(255)
#  zipcode             :string(255)
#  days_available      :string(255)
#  distance_to_travel  :string(255)
#  has_transportation  :boolean
#  user_id             :integer
#  school              :string(255)
#
# Indexes
#
#  index_employees_on_user_id  (user_id)
#

class Employee < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  has_many :reviews
  validates_formatting_of :email, using: :email
  validates_formatting_of :phone, using: :us_phone
  validates_formatting_of :zipcode, using: :us_zip
  acts_as_votable
end
