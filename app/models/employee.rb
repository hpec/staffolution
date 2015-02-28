# == Schema Information
#
# Table name: employees
#
#  id                               :integer          not null, primary key
#  employee_email                   :string(255)
#  employee_phone                   :string(255)
#  employee_zipcode                 :string(255)
#  employee_first_name              :string(255)
#  employee_last_name               :string(255)
#  user_id                          :integer
#  employee_bages                   :string(255)
#  employee_description             :text
#  employee_experience_years        :integer
#  employee_experience_months       :integer
#  employee_lic_number              :string(255)
#  employee_type                    :string(255)
#  employee_rating                  :float
#  employee_punctuality             :boolean
#  employee_dependability           :boolean
#  employee_reliable_transportation :boolean
#  employee_accurate_calendar       :boolean
#  employee_transportation          :boolean
#  employee_school                  :string(255)
#  employee_languages               :string(255)
#  employee_qualifications          :string(255)
#  employee_credentials             :string(255)
#  employee_experience              :string(255)
#  employee_phone_verified          :boolean
#  employee_email_verified          :boolean
#  employee_lic_verified            :boolean
#  created_at                       :datetime
#  updated_at                       :datetime
#
# Indexes
#
#  index_employees_on_user_id  (user_id)
#

class Employee < ActiveRecord::Base
  belongs_to :user
  has_many :jobs
  has_many :reviews
  validates_formatting_of :employee_email, using: :email
  validates_formatting_of :employee_phone, using: :us_phone
  validates_formatting_of :employee_zipcode, using: :us_zip
  acts_as_votable 
end
