# == Schema Information
#
# Table name: applications
#
#  id          :integer          not null, primary key
#  employee_id :integer
#  job_id      :integer
#  accepted    :boolean
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_applications_on_employee_id  (employee_id)
#  index_applications_on_job_id       (job_id)
#

class Application < ActiveRecord::Base
  belongs_to :employee
  belongs_to :job
end
