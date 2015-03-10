# # == Schema Information
# #
# # Table name: education_classes
# #
# #  id               :integer          not null, primary key
# #  class_name       :string(255)
# #  class_type       :string(255)
# #  class_keywords   :text
# #  class_date_start :date
# #  class_date_end   :date
# #  class_time_start :time
# #  class_time_end   :time
# #  class_worth      :integer
# #  reps_id          :integer
# #  class_category   :string(255)
# #  class_url        :string(255)
# #  created_at       :datetime
# #  updated_at       :datetime
# #
# # Indexes
# #
# #  index_education_classes_on_reps_id  (reps_id)
# #

# require 'rails_helper'

# RSpec.describe EducationClass, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
