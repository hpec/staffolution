# == Schema Information
#
# Table name: education_classes
#
#  id               :integer          not null, primary key
#  class_name       :string(255)
#  class_type       :string(255)
#  class_keywords   :text
#  class_date_start :date
#  class_date_end   :date
#  class_time_start :time
#  class_time_end   :time
#  class_worth      :integer
#  reps_id          :integer
#  class_category   :string(255)
#  class_url        :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#
# Indexes
#
#  index_education_classes_on_reps_id  (reps_id)
#

class EducationClass < ActiveRecord::Base
  belongs_to :reps
  validates_formatting_of :class_url, using: :url
  acts_as_votable 
end
