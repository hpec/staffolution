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
#  address_line_1 :string(255)
#  address_line_2 :string(255)
#  city           :string(255)
#  state          :string(255)
#  zipcode        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  contact_person :string(255)
#  industry       :string(255)
#  hours          :string(255)
#  description    :string(255)
#
# Indexes
#
#  index_employers_on_user_id  (user_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employer do
    id 1
    name "MyString"
    zipcode 12345
    phone 1234567898
    email 'example@example.com'
    user nil
    address_line_1 "MyString"
    city "MyString"
    state "MyString"
    contact_person "fff"
    industry "fghh"
  end
end
