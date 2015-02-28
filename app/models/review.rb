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

class Review < ActiveRecord::Base
  belongs_to :employee
  belongs_to :user
  belongs_to :employer
end
