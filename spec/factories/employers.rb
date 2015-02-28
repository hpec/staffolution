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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employer do
    employer_name "MyString"
    employer_zipcode "MyString"
    employer_phone "MyString"
    employer_url "MyString"
    employer_email "MyString"
    user nil
    employer_street_number "MyString"
    employer_street "MyString"
    employer_unit_number "MyString"
    employer_city "MyString"
    employer_state "MyString"
    employer_office_type "MyText"
  end
end
