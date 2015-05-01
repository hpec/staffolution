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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    email "MyString@gsndg.com"
    phone 1234567898
    zipcode 12345
    first_name "MyString"
    last_name "MyString"
    # employee_bages "MyString"
    # employee_description "MyText"
    # employee_experience_years 1
    # employee_experience_months 1
    # employee_lic_number "MyString"
    # employee_type "MyString"
    # employee_rating 1.5
    # employee_punctuality false
    # employee_dependability false
    # employee_reliable_transportation false
    # employee_accurate_calendar false
    # employee_transportation false
    # employee_school "MyString"
    # employee_languages "MyString"
    # employee_qualifications "MyString"
    # employee_credentials "MyString"
    # employee_experience "MyString"
    # employee_phone_verified false
    # employee_email_verified false
    # employee_lic_verified false
  end
end
