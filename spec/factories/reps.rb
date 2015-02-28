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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rep, :class => 'Reps' do
    rep_name "MyString"
    rep_type "MyString"
    rep_description "MyText"
    user nil
    rep_email "MyString"
    rep_phone "MyString"
    rep_url "MyString"
  end
end
