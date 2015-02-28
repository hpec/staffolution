# == Schema Information
#
# Table name: jobs
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  employee_id      :integer
#  job_position     :string(255)
#  job_description  :text
#  job_start_date   :date
#  job_end_date     :date
#  job_compensation :float
#  job_start_time   :time
#  job_end_time     :time
#  job_filled       :boolean
#  job_title        :string(255)
#  employer_id      :integer
#  created_at       :datetime
#  updated_at       :datetime
#
# Indexes
#
#  index_jobs_on_employee_id  (employee_id)
#  index_jobs_on_employer_id  (employer_id)
#  index_jobs_on_user_id      (user_id)
#

class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :employee
  belongs_to :employer
end
