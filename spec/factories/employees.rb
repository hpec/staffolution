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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    employee_email "MyString"
    employee_phone "MyString"
    employee_zipcode "MyString"
    employee_first_name "MyString"
    employee_last_name "MyString"
    user nil
    employee_bages "MyString"
    employee_description "MyText"
    employee_experience_years 1
    employee_experience_months 1
    employee_lic_number "MyString"
    employee_type "MyString"
    employee_rating 1.5
    employee_punctuality false
    employee_dependability false
    employee_reliable_transportation false
    employee_accurate_calendar false
    employee_transportation false
    employee_school "MyString"
    employee_languages "MyString"
    employee_qualifications "MyString"
    employee_credentials "MyString"
    employee_experience "MyString"
    employee_phone_verified false
    employee_email_verified false
    employee_lic_verified false
  end
end
