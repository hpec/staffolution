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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    user nil
    employee nil
    job_position "MyString"
    job_description "MyText"
    job_start_date "2014-06-06"
    job_end_date "2014-06-06"
    job_compensation 1.5
    job_start_time "2014-06-06 07:43:43"
    job_end_time "2014-06-06 07:43:43"
    job_filled false
    job_title "MyString"
    employer nil
  end
end
