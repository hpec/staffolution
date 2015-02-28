# == Schema Information
#
# Table name: reviews
#
#  id                             :integer          not null, primary key
#  employee_id                    :integer
#  review_rating                  :float
#  user_id                        :integer
#  review_description             :text
#  review_employee_recommendation :boolean
#  employer_id                    :integer
#  created_at                     :datetime
#  updated_at                     :datetime
#
# Indexes
#
#  index_reviews_on_employee_id  (employee_id)
#  index_reviews_on_employer_id  (employer_id)
#  index_reviews_on_user_id      (user_id)
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    employee nil
    review_rating 1.5
    user nil
    review_description "MyText"
    review_employee_recommendation false
    employer nil
  end
end
