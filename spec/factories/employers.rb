# == Schema Information
#
# Table name: employers
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  name           :string(255)
#  phone          :string(255)
#  website        :string(255)
#  email          :string(255)
#  office_type    :string(255)
#  address_line_1 :string(255)
#  address_line_2 :string(255)
#  city           :string(255)
#  state          :string(255)
#  zipcode        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
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
