# == Schema Information
#
# Table name: jobs
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  description    :text
#  employer_id    :integer
#  employee_id    :integer
#  address_line_1 :string(255)
#  address_line_2 :string(255)
#  city           :string(255)
#  state          :string(255)
#  zipcode        :string(255)
#  compensation   :string(255)
#  position       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_jobs_on_employee_id  (employee_id)
#  index_jobs_on_employer_id  (employer_id)
#

class Job < ActiveRecord::Base
  belongs_to :employer
  belongs_to :employee
end
